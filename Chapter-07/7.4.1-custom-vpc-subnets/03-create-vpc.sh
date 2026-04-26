VPC_ID=$(aws ec2 create-vpc   --cidr-block $VPC_CIDR   --region $REGION   --query 'Vpc.VpcId'   --output text)

echo "VPC_ID=$VPC_ID"
