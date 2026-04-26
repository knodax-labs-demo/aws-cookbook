aws iam create-role --role-name s3-xregion-backup-role \
  --assume-role-policy-document file://lambda-trust.json
