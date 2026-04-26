aws events put-rule \
  --name $EC2_TERMINATION_RULE_NAME \
  --event-pattern file://ec2-termination-event-pattern.json \
  --state ENABLED \
  --region $REGION

aws events put-targets \
  --rule $EC2_TERMINATION_RULE_NAME \
  --targets "Id"="1","Arn"="$TOPIC_ARN" \
  --region $REGION

aws events describe-rule \
  --name $EC2_TERMINATION_RULE_NAME \
  --region $REGION
