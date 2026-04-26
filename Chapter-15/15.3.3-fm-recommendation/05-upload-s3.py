import boto3

s3 = boto3.client('s3')

bucket = "your-bucket-name"
s3.put_object(Bucket=bucket, Key="train/train.rec", Body=train_data)
