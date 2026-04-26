FLOW_LOG_ID=$(aws ec2 create-flow-logs \
  --resource-type VPC \
  --resource-ids $VPC_ID \
  --traffic-type ALL \
  --log-group-name $LOG_GROUP \
  --deliver-logs-permission-arn arn:aws:iam::$ACCOUNT_ID:role/$ROLE_NAME \
  --query 'FlowLogIds[0]' \
  --output text \
  --region $REGION)
