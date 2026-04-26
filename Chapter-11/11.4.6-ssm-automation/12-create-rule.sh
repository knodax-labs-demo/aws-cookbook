RULE_NAME=EC2RebootTrigger

aws events put-rule \
  --name $RULE_NAME \
  --event-pattern '{
    "source": ["aws.ec2"],
    "detail-type": ["EC2 Instance State-change Notification"],
    "detail": {
      "state": ["stopped"]
    }
  }' \
  --region $REGION
