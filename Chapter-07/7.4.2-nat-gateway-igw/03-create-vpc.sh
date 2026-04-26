VPC_ID=$(aws ec2 create-vpc \
  --cidr-block $VPC_CIDR \
  --query 'Vpc.VpcId' \
  --output text \
  --region $REGION)

echo "VPC_ID=$VPC_ID"
