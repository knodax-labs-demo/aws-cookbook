aws s3api put-bucket-policy \
  --bucket secure-data-bucket-<account-id> \
  --policy file://bucket-policy.json
