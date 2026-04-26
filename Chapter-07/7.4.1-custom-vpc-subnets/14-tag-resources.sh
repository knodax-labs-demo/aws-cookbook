aws ec2 create-tags --resources $VPC_ID --tags Key=Name,Value=Custom-VPC

aws ec2 create-tags --resources $PUBLIC_SUBNET_1 --tags Key=Name,Value=Public-Subnet-1
aws ec2 create-tags --resources $PUBLIC_SUBNET_2 --tags Key=Name,Value=Public-Subnet-2

aws ec2 create-tags --resources $PRIVATE_SUBNET_1 --tags Key=Name,Value=Private-Subnet-1
aws ec2 create-tags --resources $PRIVATE_SUBNET_2 --tags Key=Name,Value=Private-Subnet-2
