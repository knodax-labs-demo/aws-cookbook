aws iam create-role \
  --role-name GlueCrawlerRole \
  --assume-role-policy-document file://trust-policy.json
