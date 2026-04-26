aws iam attach-role-policy \
  --role-name LambdaRedisInvalidatorRole \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaDynamoDBExecutionRole
