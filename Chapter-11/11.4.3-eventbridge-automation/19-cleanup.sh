aws scheduler delete-schedule \
  --name $SCHEDULE_NAME \
  --region $REGION

aws events remove-targets \
  --rule $CONSOLE_SIGNIN_RULE_NAME \
  --ids "1" \
  --region $REGION

aws events remove-targets \
  --rule $EC2_TERMINATION_RULE_NAME \
  --ids "1" \
  --region $REGION

aws events delete-rule \
  --name $CONSOLE_SIGNIN_RULE_NAME \
  --region $REGION

aws events delete-rule \
  --name $EC2_TERMINATION_RULE_NAME \
  --region $REGION

aws sns delete-topic \
  --topic-arn $TOPIC_ARN \
  --region $REGION

aws lambda delete-function \
  --function-name $LAMBDA_FUNCTION_NAME \
  --region $REGION

aws logs delete-log-group \
  --log-group-name "/aws/lambda/$LAMBDA_FUNCTION_NAME" \
  --region $REGION

aws iam delete-role-policy \
  --role-name $SCHEDULER_ROLE_NAME \
  --policy-name InvokeLambdaPolicy

aws iam delete-role \
  --role-name $SCHEDULER_ROLE_NAME

aws iam detach-role-policy \
  --role-name $LAMBDA_ROLE_NAME \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole

aws iam delete-role \
  --role-name $LAMBDA_ROLE_NAME
