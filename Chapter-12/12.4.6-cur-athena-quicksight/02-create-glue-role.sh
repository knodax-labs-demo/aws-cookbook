aws iam create-role \
  --role-name AWSGlueServiceRole \
  --assume-role-policy-document file://glue-trust-policy.json
