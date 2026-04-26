SUBNET_IDS=$(aws ec2 describe-subnets \
  --query "Subnets[*].SubnetId" \
  --output text)
