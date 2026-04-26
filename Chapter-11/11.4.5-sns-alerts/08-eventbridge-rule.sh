RULE_NAME=OpsEventRule

aws events put-rule \
  --name $RULE_NAME \
  --event-pattern '{
    "source": ["aws.ec2"],
    "detail-type": ["EC2 Instance State-change Notification"]
  }' \
  --region $REGION
