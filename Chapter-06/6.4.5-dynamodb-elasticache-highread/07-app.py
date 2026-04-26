import os
import json
from decimal import Decimal
from flask import Flask, request
import boto3
from botocore.config import Config
import redis

app = Flask(__name__)

DDB_TABLE = os.getenv("DDB_TABLE", "Products")
CACHE_TTL = int(os.getenv("CACHE_TTL", "120"))
REDIS_HOST = os.getenv("REDIS_HOST")
REDIS_PORT = int(os.getenv("REDIS_PORT", "6379"))

ddb = boto3.resource(
    "dynamodb",
    region_name=os.getenv("AWS_REGION", "us-east-1"),
    config=Config(retries={"max_attempts": 10, "mode": "adaptive"})
)
table = ddb.Table(DDB_TABLE)

r = redis.Redis(
    host=REDIS_HOST,
    port=REDIS_PORT,
    decode_responses=True,
    ssl=True,
    ssl_cert_reqs="none"
)

def cache_key(pk: str) -> str:
    return f"item:{pk}"

def json_serializer(obj):
    if isinstance(obj, Decimal):
        if obj % 1 == 0:
            return int(obj)
        return float(obj)
    raise TypeError(f"Type {type(obj)} not serializable")

@app.get("/products/<pid>")
def get_product(pid):
    pk = f"prod#{pid}"
    key = cache_key(pk)

    try:
        cached = r.get(key)
        if cached:
            return app.response_class(
                response=json.dumps({
                    "source": "redis",
                    "item": json.loads(cached)
                }),
                status=200,
                mimetype="application/json"
            )
    except Exception as e:
        print(f"Redis read failed: {e}")

    resp = table.get_item(Key={"pk": pk}, ConsistentRead=False)
    item = resp.get("Item")

    if not item:
        return app.response_class(
            response=json.dumps({"message": "not found"}),
            status=404,
            mimetype="application/json"
        )

    try:
        r.setex(key, CACHE_TTL, json.dumps(item, default=json_serializer))
    except Exception as e:
        print(f"Redis write failed: {e}")

    return app.response_class(
        response=json.dumps({
            "source": "dynamodb",
            "item": item
        }, default=json_serializer),
        status=200,
        mimetype="application/json"
    )

if __name__ == "__main__":
    app.run(host="127.0.0.1", port=8080)
