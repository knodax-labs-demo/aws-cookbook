aws iam put-role-policy \
  --role-name s3-xregion-backup-role \
  --policy-name s3-backup-inline \
  --policy-document file://lambda-policy.json
