aws s3 cp test.txt s3://$BUCKET_NAME/ \
  --sse aws:kms \
  --sse-kms-key-id $KMS_KEY_ARN
