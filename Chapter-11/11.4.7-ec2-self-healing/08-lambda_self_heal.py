import boto3
import os

ssm = boto3.client("ssm")

DOCUMENT_NAME = os.getenv("DOCUMENT_NAME", "EC2-Tiered-Recovery")

def lambda_handler(event, context):
    instance_id = "i-xxxx"
    response = ssm.start_automation_execution(
        DocumentName=DOCUMENT_NAME,
        Parameters={"InstanceId": [instance_id]}
    )
    return response
