import os
import json
import urllib.parse
import boto3
from botocore.exceptions import ClientError

DEST_BUCKET = os.environ.get("DEST_BUCKET", "myapp-backup-<account-id>-usw2")
DEST_REGION = os.environ.get("DEST_REGION", "us-west-2")
COPY_STORAGE_CLASS = os.environ.get("STORAGE_CLASS", "STANDARD_IA")

s3_dest = boto3.client("s3", region_name=DEST_REGION)

def copy_one(src_bucket, key, version_id=None):
    copy_source = {"Bucket": src_bucket, "Key": key}
    if version_id:
        copy_source["VersionId"] = version_id

    return s3_dest.copy_object(
        Bucket=DEST_BUCKET,
        Key=key,
        CopySource=copy_source,
        StorageClass=COPY_STORAGE_CLASS,
        MetadataDirective="COPY",
        ServerSideEncryption="AES256"
    )

def delete_one(key):
    return s3_dest.delete_object(Bucket=DEST_BUCKET, Key=key)

def lambda_handler(event, context):
    print("Received event:", json.dumps(event))

    records = event.get("Records", [])
    if not records:
        print("No Records found in event")
        return {"status": "ignored"}

    for record in records:
        event_name = record.get("eventName", "")
        bucket = record.get("s3", {}).get("bucket", {}).get("name")
        raw_key = record.get("s3", {}).get("object", {}).get("key", "")
        key = urllib.parse.unquote_plus(raw_key) if raw_key else ""
        version_id = record.get("s3", {}).get("object", {}).get("versionId")

        if not bucket or not key:
            print(f"Skipping malformed record: {json.dumps(record)}")
            continue

        try:
            if event_name.startswith("ObjectCreated:"):
                copy_one(bucket, key, version_id)
                print(f"Copied {bucket}/{key} (v={version_id}) -> s3://{DEST_BUCKET}/{key}")

            elif event_name.startswith("ObjectRemoved:"):
                delete_one(key)
                print(f"Deleted mirror s3://{DEST_BUCKET}/{key}")

            else:
                print(f"Event not handled: {event_name}")

        except ClientError as e:
            print(f"Error handling {event_name} for {bucket}/{key}: {e}")
            raise

    return {"status": "ok"}
