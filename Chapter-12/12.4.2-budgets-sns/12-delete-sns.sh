aws sns list-subscriptions --region $REGION

aws sns unsubscribe \
  --subscription-arn <SUBSCRIPTION_ARN>

aws sns delete-topic \
  --topic-arn $TOPIC_ARN \
  --region $REGION
