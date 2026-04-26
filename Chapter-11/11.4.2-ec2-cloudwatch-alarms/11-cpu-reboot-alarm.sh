aws cloudwatch put-metric-alarm \
  --alarm-name $CPU_REBOOT_ALARM_NAME \
  --alarm-description "Reboot EC2 instance when CPU utilization exceeds 99 percent" \
  --namespace AWS/EC2 \
  --metric-name CPUUtilization \
  --dimensions Name=InstanceId,Value=$INSTANCE_ID \
  --statistic Average \
  --period 300 \
  --evaluation-periods 1 \
  --threshold 99 \
  --comparison-operator GreaterThanThreshold \
  --alarm-actions arn:aws:automate:$REGION:ec2:reboot \
  --region $REGION

aws cloudwatch describe-alarms \
  --region $REGION \
  --query 'MetricAlarms[*].[AlarmName,StateValue,Threshold,ComparisonOperator]' \
  --output table
