aws s3api put-bucket-encryption --bucket myapp-backup-<account-ID>-usw2 \
  --server-side-encryption-configuration '{
    "Rules":[{"ApplyServerSideEncryptionByDefault":{"SSEAlgorithm":"AES256"}}]}'
