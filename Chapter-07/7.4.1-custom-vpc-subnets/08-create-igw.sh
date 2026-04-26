IGW_ID=$(aws ec2 create-internet-gateway   --query 'InternetGateway.InternetGatewayId'   --output text)

aws ec2 attach-internet-gateway   --vpc-id $VPC_ID   --internet-gateway-id $IGW_ID
