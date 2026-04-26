import json
from datetime import datetime

def lambda_handler(event, context):
    print("EventBridge demo function invoked.")
    print("Received event:")
    print(json.dumps(event))

    return {
        "statusCode": 200,
        "message": "Lambda invoked successfully",
        "timestamp": datetime.utcnow().isoformat()
    }
