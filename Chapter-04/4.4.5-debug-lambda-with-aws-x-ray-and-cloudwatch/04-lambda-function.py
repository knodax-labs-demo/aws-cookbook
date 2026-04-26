from aws_xray_sdk.core import xray_recorder, patch_all

# Enable tracing for supported libraries (boto3, requests, etc.)
patch_all()

def lambda_handler(event, context):
    with xray_recorder.in_subsegment("process_event"):
        print("Processing event...")

        response = {
            "status": "success",
            "message": "Hello from X-Ray enabled Lambda"
        }

    return response
