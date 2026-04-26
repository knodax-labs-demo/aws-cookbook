aws events remove-targets \
  --rule $RULE_NAME \
  --ids "1" \
  --region $REGION

aws events delete-rule \
  --name $RULE_NAME \
  --region $REGION

aws lambda remove-permission \
  --function-name $FUNCTION_NAME \
  --statement-id AllowEventBridgeDailyCostReport \
  --region $REGION

aws lambda delete-function \
  --function-name $FUNCTION_NAME \
  --region $REGION

aws iam detach-role-policy \
  --role-name $ROLE_NAME \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole

aws iam detach-role-policy \
  --role-name $ROLE_NAME \
  --policy-arn $POLICY_ARN

aws iam delete-policy \
  --policy-arn $POLICY_ARN

aws iam delete-role \
  --role-name $ROLE_NAME

aws logs delete-log-group \
  --log-group-name /aws/lambda/$FUNCTION_NAME \
  --region $REGION
