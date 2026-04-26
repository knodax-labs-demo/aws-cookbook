import os
import redis
from boto3.dynamodb.types import TypeDeserializer

REDIS_HOST = os.getenv("REDIS_HOST")
REDIS_PORT = int(os.getenv("REDIS_PORT", "6379"))

r = redis.Redis(
    host=REDIS_HOST,
    port=REDIS_PORT,
    ssl=True,
    ssl_cert_reqs=None
)

deser = TypeDeserializer()

def ddb_to_python(ddb_map):
    return {k: deser.deserialize(v) for k, v in ddb_map.items()}

def lambda_handler(event, context):
    for record in event["Records"]:
        if record["eventName"] not in ("INSERT", "MODIFY", "REMOVE"):
            continue

        new = record.get("dynamodb", {}).get("NewImage")
        old = record.get("dynamodb", {}).get("OldImage")

        item = ddb_to_python(new or old) if (new or old) else None
        if not item:
            continue

        pk = item.get("pk")
        if not pk:
            continue

        key = f"item:{pk}"

        try:
            r.delete(key)
            print(f"Deleted cache key: {key}")
        except Exception as e:
            print(f"Redis error: {e}")

    return {"status": "done"}
