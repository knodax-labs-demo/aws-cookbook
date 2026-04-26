aws kms create-alias \
  --alias-name alias/s3-encryption-key \
  --target-key-id $KMS_KEY_ID
