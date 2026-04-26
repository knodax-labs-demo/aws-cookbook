import boto3
session = boto3.Session(profile_name='dev')
s3 = session.client('s3')
print(s3.list_buckets())
