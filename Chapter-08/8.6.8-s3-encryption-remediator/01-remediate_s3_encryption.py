import os
import json
import boto3
from botocore.exceptions import ClientError
 
s3 = boto3.client("s3")
sns = boto3.client("sns")
KMS_KEY_ARN = os.getenv("KMS_KEY_ARN", "").strip()
SNS_TOPIC_ARN = os.getenv("SNS_TOPIC_ARN", "").strip()
EXCLUDE_PREFIXES = [p.strip() for p in os.getenv("EXCLUDE_PREFIXES", "").split(",") if p.strip()]
REQUIRE_BUCKET_KEY = os.getenv("REQUIRE_BUCKET_KEY", "true").lower() == "true"
 
def is_excluded(bucket):
    if any(bucket.startswith(p) for p in EXCLUDE_PREFIXES):
        return True
    try:
        tagging = s3.get_bucket_tagging(Bucket=bucket)
        for t in tagging.get("TagSet", []):
            if t["Key"].lower() == "skipencryption" and t["Value"].lower() == "true":
                return True
    except ClientError as e:
        if e.response["Error"]["Code"] not in ("NoSuchTagSet", "NoSuchTagSetError", "NoSuchTagSetFound"):
            pass
    return False
 
def current_encryption(bucket):
    try:
        resp = s3.get_bucket_encryption(Bucket=bucket)
        rules = resp["ServerSideEncryptionConfiguration"]["Rules"]
        return rules
    except ClientError as e:
        if e.response["Error"]["Code"] == "ServerSideEncryptionConfigurationNotFoundError":
            return None
        raise
 
def put_encryption(bucket):
    if KMS_KEY_ARN:
        config = {
            "ServerSideEncryptionConfiguration": {
                "Rules": [{
                    "ApplyServerSideEncryptionByDefault": {
                        "SSEAlgorithm": "aws:kms",
                        "KMSMasterKeyID": KMS_KEY_ARN
                    },
                    "BucketKeyEnabled": REQUIRE_BUCKET_KEY
                }]
            }
        }
    else:
        config = {
            "ServerSideEncryptionConfiguration": {
                "Rules": [{
                    "ApplyServerSideEncryptionByDefault": {"SSEAlgorithm": "AES256"},
                    "BucketKeyEnabled": REQUIRE_BUCKET_KEY
                }]
            }
        }
    s3.put_bucket_encryption(Bucket=bucket, ServerSideEncryptionConfiguration=config)
 
def publish_sns(subject, message):
    if SNS_TOPIC_ARN:
        sns.publish(TopicArn=SNS_TOPIC_ARN, Subject=subject, Message=message)
 
def remediate(event, context):
    remediated = []
    skipped = []
    errors = []
 
    buckets = s3.list_buckets().get("Buckets", [])
    for b in buckets:
        name = b["Name"]
 
        if is_excluded(name):
            skipped.append(name)
            continue
 
        try:
            if not current_encryption(name):
                put_encryption(name)
                remediated.append(name)
            else:
                skipped.append(name)
        except ClientError as e:
            errors.append({"bucket": name, "error": str(e)})
 
    summary = {
        "remediated_count": len(remediated),
        "remediated_buckets": remediated,
        "skipped_count": len(skipped),
        "errors": errors
    }
    print(json.dumps(summary, indent=2))
 
    publish_sns(
        subject="S3 Encryption Remediation Summary",
        message=json.dumps(summary, indent=2)
    )
    return summary
 
def lambda_handler(event, context):
    return remediate(event, context)
