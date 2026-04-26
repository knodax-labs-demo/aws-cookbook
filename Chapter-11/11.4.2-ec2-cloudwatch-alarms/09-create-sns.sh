TOPIC_ARN=$(aws sns create-topic \
  --name $SNS_TOPIC_NAME \
  --region $REGION \
  --query 'TopicArn' \
  --output text)

echo $TOPIC_ARN

SUBSCRIPTION_ARN=$(aws sns subscribe \
  --topic-arn $TOPIC_ARN \
  --protocol email \
  --notification-endpoint $EMAIL_ADDRESS \
  --region $REGION \
  --query 'SubscriptionArn' \
  --output text)

echo $SUBSCRIPTION_ARN
