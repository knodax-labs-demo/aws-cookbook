aws events put-rule \
  --name $RULE_NAME \
  --schedule-expression "cron(0 9 * * ? *)" \
  --state ENABLED \
  --region $REGION

LAMBDA_ARN=$(aws lambda get-function \
  --function-name $FUNCTION_NAME \
  --query 'Configuration.FunctionArn' \
  --output text \
  --region $REGION)

aws lambda add-permission \
  --function-name $FUNCTION_NAME \
  --statement-id AllowEventBridgeDailyCostReport \
  --action lambda:InvokeFunction \
  --principal events.amazonaws.com \
  --source-arn arn:aws:events:$REGION:$ACCOUNT_ID:rule/$RULE_NAME \
  --region $REGION

aws events put-targets \
  --rule $RULE_NAME \
  --targets "Id"="1","Arn"="$LAMBDA_ARN" \
  --region $REGION
