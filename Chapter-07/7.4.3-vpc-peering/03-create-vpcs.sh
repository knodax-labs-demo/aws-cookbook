VPC1_ID=$(aws ec2 create-vpc \
  --cidr-block $VPC1_CIDR \
  --region $REGION \
  --query 'Vpc.VpcId' \
  --output text)

VPC2_ID=$(aws ec2 create-vpc \
  --cidr-block $VPC2_CIDR \
  --region $REGION \
  --query 'Vpc.VpcId' \
  --output text)

echo "VPC1: $VPC1_ID"
echo "VPC2: $VPC2_ID"
