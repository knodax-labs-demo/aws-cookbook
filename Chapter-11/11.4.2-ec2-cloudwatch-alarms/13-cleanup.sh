aws cloudwatch delete-alarms \
  --alarm-names $CPU_EMAIL_ALARM_NAME $CPU_REBOOT_ALARM_NAME \
  --region $REGION

aws cloudwatch delete-alarms \
  --alarm-names $BILLING_ALARM_NAME \
  --region us-east-1

aws sns delete-topic \
  --topic-arn $TOPIC_ARN \
  --region $REGION

aws ec2 terminate-instances \
  --instance-ids $INSTANCE_ID \
  --region $REGION

aws ec2 wait instance-terminated \
  --instance-ids $INSTANCE_ID \
  --region $REGION

aws ec2 delete-security-group \
  --group-id $SG_ID \
  --region $REGION

aws ec2 delete-subnet \
  --subnet-id $SUBNET_ID \
  --region $REGION

aws ec2 delete-vpc \
  --vpc-id $VPC_ID \
  --region $REGION
