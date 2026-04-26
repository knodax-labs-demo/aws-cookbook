VPC1_ID=$(aws ec2 create-vpc   --cidr-block $VPC1_CIDR   --query 'Vpc.VpcId'   --output text)

VPC2_ID=$(aws ec2 create-vpc   --cidr-block $VPC2_CIDR   --query 'Vpc.VpcId'   --output text)
