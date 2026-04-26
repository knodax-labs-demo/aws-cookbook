aws iam put-role-policy \
  --role-name AWSGlueServiceRole \
  --policy-name GlueCrawlerCURReadAccess \
  --policy-document file://glue-cur-s3-policy.json
