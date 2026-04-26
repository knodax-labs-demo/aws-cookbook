aws ec2 describe-flow-logs \
  --filter Name=resource-id,Values=$VPC_ID \
  --region $REGION
