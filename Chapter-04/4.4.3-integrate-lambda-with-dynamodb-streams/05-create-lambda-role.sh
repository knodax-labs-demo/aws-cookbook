aws iam create-role \
  --role-name LambdaDynamoRole \
  --assume-role-policy-document file://trust-policy.json
