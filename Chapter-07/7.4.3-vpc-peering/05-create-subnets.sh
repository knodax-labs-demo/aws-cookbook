SUBNET1_ID=$(aws ec2 create-subnet \
  --vpc-id $VPC1_ID \
  --cidr-block $VPC1_SUBNET_CIDR \
  --region $REGION \
  --query 'Subnet.SubnetId' \
  --output text)

SUBNET2_ID=$(aws ec2 create-subnet \
  --vpc-id $VPC2_ID \
  --cidr-block $VPC2_SUBNET_CIDR \
  --region $REGION \
  --query 'Subnet.SubnetId' \
  --output text)
