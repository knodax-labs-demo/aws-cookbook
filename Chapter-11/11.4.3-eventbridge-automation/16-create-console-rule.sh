aws events put-rule \
  --name $CONSOLE_SIGNIN_RULE_NAME \
  --event-pattern file://console-signin-event-pattern.json \
  --state ENABLED \
  --region $REGION

aws events put-targets \
  --rule $CONSOLE_SIGNIN_RULE_NAME \
  --targets "Id"="1","Arn"="$TOPIC_ARN" \
  --region $REGION

aws events describe-rule \
  --name $CONSOLE_SIGNIN_RULE_NAME \
  --region $REGION
