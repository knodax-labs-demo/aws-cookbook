PRIVATE_SUBNET_1=$(aws ec2 create-subnet   --vpc-id $VPC_ID   --cidr-block $PRIVATE_SUBNET_1_CIDR   --availability-zone $AZ1   --query 'Subnet.SubnetId'   --output text)

PRIVATE_SUBNET_2=$(aws ec2 create-subnet   --vpc-id $VPC_ID   --cidr-block $PRIVATE_SUBNET_2_CIDR   --availability-zone $AZ2   --query 'Subnet.SubnetId'   --output text)
