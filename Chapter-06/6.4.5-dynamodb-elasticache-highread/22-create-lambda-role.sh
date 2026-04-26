aws iam create-role \
  --role-name LambdaRedisInvalidatorRole \
  --assume-role-policy-document file://lambda-trust.json
