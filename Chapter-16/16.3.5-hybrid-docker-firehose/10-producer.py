import os
import json
import time
import random
import boto3
from botocore.config import Config
from botocore.exceptions import BotoCoreError, ClientError
from datetime import datetime, timezone

DELIVERY_STREAM = os.getenv("DELIVERY_STREAM", "edge-events")
REGION = os.getenv("AWS_REGION", "us-east-1")
BATCH_SIZE = int(os.getenv("BATCH_SIZE", "50"))
INTERVAL_SEC = float(os.getenv("INTERVAL_SEC", "0.5"))

session = boto3.Session(
    aws_access_key_id=os.getenv("AWS_ACCESS_KEY_ID"),
    aws_secret_access_key=os.getenv("AWS_SECRET_ACCESS_KEY"),
    aws_session_token=os.getenv("AWS_SESSION_TOKEN"),
    region_name=REGION
)

firehose = session.client(
    "firehose",
    config=Config(retries={"max_attempts": 10, "mode": "standard"})
)

def sensor_event():
    return {
        "device_id": f"sensor-{random.randint(1, 5)}",
        "temp_c": round(random.uniform(18.0, 34.0), 2),
        "humidity": round(random.uniform(20.0, 75.0), 2),
        "ts": datetime.now(timezone.utc).isoformat()
    }

def to_firehose_record(event):
    return {"Data": (json.dumps(event) + "\n").encode("utf-8")}

def main():
    buffer = []
    while True:
        buffer.append(sensor_event())
        if len(buffer) >= BATCH_SIZE:
            records = [to_firehose_record(event) for event in buffer]
            try:
                response = firehose.put_record_batch(
                    DeliveryStreamName=DELIVERY_STREAM,
                    Records=records
                )
                if response.get("FailedPutCount", 0) == 0:
                    buffer.clear()
            except (BotoCoreError, ClientError):
                time.sleep(5)
        time.sleep(INTERVAL_SEC)

if __name__ == "__main__":
    main()
