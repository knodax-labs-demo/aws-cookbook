aws iam create-role \
  --role-name GlueServiceRole \
  --assume-role-policy-document file://trust-policy.json

aws iam attach-role-policy \
  --role-name GlueServiceRole \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole
