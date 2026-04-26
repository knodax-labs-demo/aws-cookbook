aws events put-targets \
  --rule $RULE_NAME \
  --targets "Id"="1","Arn"="$TOPIC_ARN" \
  --region $REGION
