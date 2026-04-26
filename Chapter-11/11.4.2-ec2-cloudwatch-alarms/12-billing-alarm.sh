aws cloudwatch put-metric-alarm \
  --alarm-name $BILLING_ALARM_NAME \
  --alarm-description "Notify when estimated AWS charges exceed 1.00 USD" \
  --namespace AWS/Billing \
  --metric-name EstimatedCharges \
  --dimensions Name=Currency,Value=USD \
  --statistic Maximum \
  --period 21600 \
  --evaluation-periods 1 \
  --threshold 1 \
  --comparison-operator GreaterThanThreshold \
  --alarm-actions $TOPIC_ARN \
  --region us-east-1

aws cloudwatch describe-alarms \
  --alarm-names $BILLING_ALARM_NAME \
  --region us-east-1
