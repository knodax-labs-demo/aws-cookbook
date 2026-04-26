import boto3
session = boto3.Session(profile_name='dev')
s3 = session.resource('s3')
