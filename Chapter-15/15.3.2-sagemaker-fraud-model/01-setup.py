import sagemaker
import boto3

session = sagemaker.Session()
region = boto3.Session().region_name
bucket = session.default_bucket()

print(region, bucket)
