import boto3
import os
from datetime import date, timedelta

ce = boto3.client("ce")
ses = boto3.client("ses", region_name=os.environ.get("SES_REGION", "us-east-1"))

SENDER_EMAIL = os.environ["SENDER_EMAIL"]
RECIPIENT_EMAIL = os.environ["RECIPIENT_EMAIL"]

def lambda_handler(event, context):
    end_date = date.today()
    start_date = end_date - timedelta(days=1)

    response = ce.get_cost_and_usage(
        TimePeriod={
            "Start": str(start_date),
            "End": str(end_date)
        },
        Granularity="DAILY",
        Metrics=["UnblendedCost"],
        GroupBy=[
            {
                "Type": "DIMENSION",
                "Key": "SERVICE"
            }
        ]
    )

    results = response["ResultsByTime"][0]
    total = 0.0
    lines = []

    for group in results.get("Groups", []):
        service_name = group["Keys"][0]
        amount = float(group["Metrics"]["UnblendedCost"]["Amount"])
        total += amount

        if amount > 0:
            lines.append(f"{service_name}: ${amount:.2f}")

    lines.sort()

    report_body = f"Daily AWS Cost Report\n\nDate: {start_date}\nTotal: ${total:.2f}\n"

    ses.send_email(
        Source=SENDER_EMAIL,
        Destination={"ToAddresses": [RECIPIENT_EMAIL]},
        Message={
            "Subject": {"Data": f"Daily AWS Cost Report - {start_date}"},
            "Body": {"Text": {"Data": report_body}}
        }
    )

    return {"statusCode": 200}
