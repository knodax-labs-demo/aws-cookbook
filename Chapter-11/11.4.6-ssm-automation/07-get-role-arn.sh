AUTOMATION_ROLE_ARN=$(aws iam get-role \
  --role-name $AUTOMATION_ROLE_NAME \
  --query 'Role.Arn' \
  --output text)

echo $AUTOMATION_ROLE_ARN
