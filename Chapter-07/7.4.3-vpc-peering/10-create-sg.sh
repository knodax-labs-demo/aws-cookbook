SG1_ID=$(aws ec2 create-security-group \
  --group-name VPC1-SG \
  --description "Allow traffic from VPC2" \
  --vpc-id $VPC1_ID \
  --query 'GroupId' \
  --output text)

SG2_ID=$(aws ec2 create-security-group \
  --group-name VPC2-SG \
  --description "Allow traffic from VPC1" \
  --vpc-id $VPC2_ID \
  --query 'GroupId' \
  --output text)
