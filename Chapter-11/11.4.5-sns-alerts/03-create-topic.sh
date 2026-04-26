TOPIC_ARN=$(aws sns create-topic \
  --name $TOPIC_NAME \
  --query 'TopicArn' \
  --output text \
  --region $REGION)

echo "SNS Topic ARN: $TOPIC_ARN"
