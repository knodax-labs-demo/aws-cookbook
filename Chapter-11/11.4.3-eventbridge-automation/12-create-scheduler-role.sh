aws iam create-role \
  --role-name $SCHEDULER_ROLE_NAME \
  --assume-role-policy-document file://scheduler-trust-policy.json

LAMBDA_ARN=$(aws lambda get-function \
  --function-name $LAMBDA_FUNCTION_NAME \
  --region $REGION \
  --query 'Configuration.FunctionArn' \
  --output text)

cat > scheduler-lambda-policy.json <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "lambda:InvokeFunction",
      "Resource": "$LAMBDA_ARN"
    }
  ]
}
EOF

aws iam put-role-policy \
  --role-name $SCHEDULER_ROLE_NAME \
  --policy-name InvokeLambdaPolicy \
  --policy-document file://scheduler-lambda-policy.json

SCHEDULER_ROLE_ARN=$(aws iam get-role \
  --role-name $SCHEDULER_ROLE_NAME \
  --query 'Role.Arn' \
  --output text)

echo $SCHEDULER_ROLE_ARN
