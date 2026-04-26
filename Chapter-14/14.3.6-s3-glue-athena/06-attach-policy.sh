aws iam put-role-policy \
  --role-name AWSGlueServiceRole \
  --policy-name GlueS3AccessForDemoBucket \
  --policy-document file://glue-s3-access-policy.json
