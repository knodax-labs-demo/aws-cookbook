aws iam detach-role-policy \
  --role-name LambdaDynamoRole \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaDynamoDBExecutionRole
