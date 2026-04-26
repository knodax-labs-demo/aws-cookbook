aws iam create-role \
  --role-name RekogIngestRole \
  --assume-role-policy-document file://trust.json
