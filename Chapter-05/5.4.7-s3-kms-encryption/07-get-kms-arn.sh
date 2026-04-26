KMS_KEY_ARN=$(aws kms describe-key \
  --key-id $KMS_KEY_ID \
  --query 'KeyMetadata.Arn' \
  --output text)
