bucket = s3.Bucket('aws-cookbook-boto3-demo-<ACCOUNT-ID>')
bucket.objects.all().delete()
bucket.delete()
