KMS_KEY_ID=$(aws kms create-key \
  --description "S3 encryption key" \
  --policy file://kms-policy.json \
  --query 'KeyMetadata.KeyId' \
  --output text)
