aws iam put-role-policy \
  --role-name RekogIngestRole \
  --policy-name RekogIngestInline \
  --policy-document file://policy.json
