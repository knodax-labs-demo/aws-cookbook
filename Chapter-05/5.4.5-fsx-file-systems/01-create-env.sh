ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION=us-east-1
VPC_ID=<your-vpc-id>
SUBNET_ID_1=<your-subnet-id-1>
SUBNET_ID_2=<your-subnet-id-2>
SECURITY_GROUP_ID=<your-security-group-id>
