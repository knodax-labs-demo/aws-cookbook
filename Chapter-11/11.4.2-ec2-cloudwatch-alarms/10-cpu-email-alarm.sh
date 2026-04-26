aws cloudwatch put-metric-alarm \
  --alarm-name $CPU_EMAIL_ALARM_NAME \
  --alarm-description "Send email when EC2 CPU utilization exceeds 85 percent" \
  --namespace AWS/EC2 \
  --metric-name CPUUtilization \
  --dimensions Name=InstanceId,Value=$INSTANCE_ID \
  --statistic Average \
  --period 300 \
  --evaluation-periods 1 \
  --threshold 85 \
  --comparison-operator GreaterThanThreshold \
  --alarm-actions $TOPIC_ARN \
  --region $REGION

aws cloudwatch describe-alarms \
  --alarm-names $CPU_EMAIL_ALARM_NAME \
  --region $REGION
