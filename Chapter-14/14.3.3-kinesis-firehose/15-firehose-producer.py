cat > put_records_to_firehose.py <<'EOF'
import boto3
import json
import random
import time
from datetime import datetime, timezone

DELIVERY_STREAM_NAME = "direct-stream-to-s3"
REGION = "us-east-1"

firehose = boto3.client("firehose", region_name=REGION)

for i in range(10):
    record = {
        "event_id": i + 1,
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "value": random.randint(1, 100)
    }

    response = firehose.put_record(
        DeliveryStreamName=DELIVERY_STREAM_NAME,
        Record={
            "Data": json.dumps(record) + "\n"
        }
    )

    print(f"Sent record {record['event_id']}: {response}")
    time.sleep(1)
EOF
