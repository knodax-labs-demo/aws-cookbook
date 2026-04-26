PUBLIC_SUBNET_ID=$(aws ec2 create-subnet \
  --vpc-id $VPC_ID \
  --cidr-block $PUBLIC_SUBNET_CIDR \
  --availability-zone $AZ \
  --query 'Subnet.SubnetId' \
  --output text)

echo "PUBLIC_SUBNET_ID=$PUBLIC_SUBNET_ID"

PRIVATE_SUBNET_ID=$(aws ec2 create-subnet \
  --vpc-id $VPC_ID \
  --cidr-block $PRIVATE_SUBNET_CIDR \
  --availability-zone $AZ \
  --query 'Subnet.SubnetId' \
  --output text)

echo "PRIVATE_SUBNET_ID=$PRIVATE_SUBNET_ID"
