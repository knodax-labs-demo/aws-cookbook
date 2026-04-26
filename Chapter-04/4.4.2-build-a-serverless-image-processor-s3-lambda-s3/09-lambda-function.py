import boto3
import urllib.parse

s3 = boto3.client("s3")

PROCESSED_BUCKET = "processed-images-bucket-<ACCOUNT-ID>"

def lambda_handler(event, context):
    record = event["Records"][0]
    source_bucket = record["s3"]["bucket"]["name"]
    key = urllib.parse.unquote_plus(record["s3"]["object"]["key"])

    copy_source = {
        "Bucket": source_bucket,
        "Key": key
    }

    output_key = f"processed-{key.rsplit('/', 1)[-1]}"

    s3.copy_object(
        Bucket=PROCESSED_BUCKET,
        CopySource=copy_source,
        Key=output_key
    )

    return {
        "statusCode": 200,
        "body": f"Successfully copied {key} to {output_key}"
    }
