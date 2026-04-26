ROLE_ARN=$(aws iam get-role \
  --role-name LambdaDynamoRole \
  --query "Role.Arn" \
  --output text)

echo $ROLE_ARN
