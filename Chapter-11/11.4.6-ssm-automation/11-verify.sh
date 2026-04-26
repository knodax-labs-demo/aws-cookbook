aws ssm describe-automation-executions \
  --region $REGION

aws ec2 describe-instance-status \
  --instance-ids $INSTANCE_ID \
  --region $REGION
