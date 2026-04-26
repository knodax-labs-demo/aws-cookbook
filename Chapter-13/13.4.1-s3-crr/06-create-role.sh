aws iam create-role \
  --role-name S3ReplicationRole \
  --assume-role-policy-document file://trust-policy.json
