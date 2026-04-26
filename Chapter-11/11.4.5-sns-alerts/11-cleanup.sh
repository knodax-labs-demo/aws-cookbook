aws cloudwatch delete-alarms \
  --alarm-names HighCPUUtilization \
  --region $REGION

aws events remove-targets \
  --rule $RULE_NAME \
  --ids "1" \
  --region $REGION

aws events delete-rule \
  --name $RULE_NAME \
  --region $REGION

SUB_ARN=$(aws sns list-subscriptions-by-topic \
  --topic-arn $TOPIC_ARN \
  --query 'Subscriptions[0].SubscriptionArn' \
  --output text \
  --region $REGION)

aws sns unsubscribe \
  --subscription-arn $SUB_ARN \
  --region $REGION

aws sns delete-topic \
  --topic-arn $TOPIC_ARN \
  --region $REGION
