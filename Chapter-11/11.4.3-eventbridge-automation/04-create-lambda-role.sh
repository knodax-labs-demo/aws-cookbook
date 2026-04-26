aws iam create-role \
  --role-name $LAMBDA_ROLE_NAME \
  --assume-role-policy-document file://lambda-trust-policy.json

aws iam attach-role-policy \
  --role-name $LAMBDA_ROLE_NAME \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole

sleep 15

LAMBDA_ROLE_ARN=$(aws iam get-role \
  --role-name $LAMBDA_ROLE_NAME \
  --query 'Role.Arn' \
  --output text)

echo $LAMBDA_ROLE_ARN
