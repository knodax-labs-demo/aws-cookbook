cat > put_records_to_kinesis.py <<'EOF'
import boto3
import json
import random
import time
from datetime import datetime, timezone

STREAM_NAME = "MLStreamingInput"
REGION = "us-east-1"

kinesis = boto3.client("kinesis", region_name=REGION)

for i in range(10):
    record = {
        "event_id": i + 1,
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "value": random.randint(1, 100)
    }

    response = kinesis.put_record(
        StreamName=STREAM_NAME,
        Data=json.dumps(record) + "\n",
        PartitionKey=str(record["event_id"])
    )

    print(f"Sent record {record['event_id']}: {response}")
    time.sleep(1)
EOF
