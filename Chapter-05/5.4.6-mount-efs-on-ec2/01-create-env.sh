export REGION=us-east-1
export VPC_ID=$(aws ec2 describe-vpcs --query "Vpcs[0].VpcId" --output text)
export SUBNET_ID=$(aws ec2 describe-subnets --query "Subnets[0].SubnetId" --output text)
export KEY_NAME=my-keypair
export SG_NAME=efs-sg
export EFS_NAME=my-efs-demo
