VPC_ID=$(aws ec2 describe-vpcs \
  --query "Vpcs[?IsDefault==\`true\`].VpcId" \
  --output text \
  --region $REGION)

SUBNET1=$(aws ec2 describe-subnets \
  --filters "Name=vpc-id,Values=$VPC_ID" \
  --query "Subnets[0].SubnetId" \
  --output text \
  --region $REGION)

SUBNET2=$(aws ec2 describe-subnets \
  --filters "Name=vpc-id,Values=$VPC_ID" \
  --query "Subnets[1].SubnetId" \
  --output text \
  --region $REGION)
