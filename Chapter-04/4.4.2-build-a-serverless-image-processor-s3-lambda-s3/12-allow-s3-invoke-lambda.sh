aws lambda add-permission \
  --function-name $FUNCTION_NAME \
  --statement-id S3InvokePermission \
  --action lambda:InvokeFunction \
  --principal s3.amazonaws.com \
  --source-arn arn:aws:s3:::$SOURCE_BUCKET \
  --source-account $ACCOUNT_ID \
  --region $REGION
