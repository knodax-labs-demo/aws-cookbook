aws lambda create-function \
  --function-name s3-xregion-backup \
  --runtime python3.11 \
  --role arn:aws:iam::<accountID>:role/s3-xregion-backup-role \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip \
  --environment "Variables={DEST_BUCKET=myapp-backup-<accountID >-usw2,DEST_REGION=us-west-2,STORAGE_CLASS=STANDARD_IA}" \
  --region us-east-1
