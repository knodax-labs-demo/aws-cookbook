SG_ID=$(aws ec2 create-security-group \
  --group-name webapp-sg \
  --description "Allow HTTP access" \
  --vpc-id $VPC_ID \
  --query 'GroupId' \
  --output text)
