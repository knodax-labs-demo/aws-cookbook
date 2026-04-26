import os, json, time, boto3
from urllib.parse import unquote_plus

rekog = boto3.client("rekognition")
ddb   = boto3.client("dynamodb")

TABLE = os.getenv("TABLE_NAME", "ImageMetadata")
MAX_LABELS = int(os.getenv("MAX_LABELS", "12"))
MIN_CONF = float(os.getenv("MIN_CONFIDENCE", "80"))

def lambda_handler(event, context):
    for rec in event.get("Records", []):
        bucket = rec["s3"]["bucket"]["name"]
        key = unquote_plus(rec["s3"]["object"]["key"])
        uploaded_at = time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime())

        labels_resp = rekog.detect_labels(
            Image={"S3Object":{"Bucket": bucket, "Name": key}},
            MaxLabels=MAX_LABELS,
            MinConfidence=MIN_CONF
        )

        labels = [
            {"name": l["Name"], "confidence": round(l["Confidence"], 2)}
            for l in labels_resp.get("Labels", [])
        ]

        try:
            text_resp = rekog.detect_text(
                Image={"S3Object":{"Bucket": bucket, "Name": key}}
            )
            texts = [
                d["DetectedText"]
                for d in text_resp.get("TextDetections", [])
                if d["Type"] == "LINE"
            ]
        except Exception:
            texts = []

        item = {
            "image_key": {"S": key},
            "uploaded_at": {"S": uploaded_at},
            "bucket": {"S": bucket},
            "labels": {"S": json.dumps(labels)},
            "texts": {"S": json.dumps(texts)},
            "source": {"S": "s3-upload"}
        }

        ddb.put_item(TableName=TABLE, Item=item)

    return {"status": "ok", "processed": len(event.get("Records", []))}
