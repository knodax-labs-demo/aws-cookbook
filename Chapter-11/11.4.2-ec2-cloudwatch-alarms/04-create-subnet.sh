AZ=$(aws ec2 describe-availability-zones \
  --region $REGION \
  --query 'AvailabilityZones[0].ZoneName' \
  --output text)

SUBNET_ID=$(aws ec2 create-subnet \
  --vpc-id $VPC_ID \
  --cidr-block 10.10.1.0/24 \
  --availability-zone $AZ \
  --region $REGION \
  --query 'Subnet.SubnetId' \
  --output text)

aws ec2 create-tags \
  --resources $SUBNET_ID \
  --tags Key=Name,Value=$SUBNET_NAME \
  --region $REGION
