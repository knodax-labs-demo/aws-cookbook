import boto3

s3 = boto3.client("s3")

s3.upload_file("fraud_data.csv", bucket, "fraud/fraud_data.csv")
