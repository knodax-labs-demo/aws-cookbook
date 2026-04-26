SG_ID=$(aws ec2 create-security-group \
  --group-name $SG_NAME \
  --description "Security group for CloudWatch alarm demo" \
  --vpc-id $VPC_ID \
  --region $REGION \
  --query 'GroupId' \
  --output text)
