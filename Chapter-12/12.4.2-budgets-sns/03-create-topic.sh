aws sns create-topic \
  --name $TOPIC_NAME \
  --region $REGION

TOPIC_ARN=$(aws sns list-topics \
  --query "Topics[?contains(TopicArn, '$TOPIC_NAME')].TopicArn" \
  --output text)
