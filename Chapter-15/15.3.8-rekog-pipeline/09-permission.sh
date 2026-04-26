aws lambda add-permission \
  --function-name RekogIngestFn \
  --statement-id S3Invoke \
  --action lambda:InvokeFunction \
  --principal s3.amazonaws.com \
  --source-arn arn:aws:s3:::my-ai-images-<account-id> \
  --source-account <account-id>
