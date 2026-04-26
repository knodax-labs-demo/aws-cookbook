export ROLE_ARN=$(aws iam get-role \
  --role-name $ROLE_NAME \
  --query Role.Arn \
  --output text)
