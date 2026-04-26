SG_ID=$(aws ec2 create-security-group \
  --group-name $SG_NAME \
  --description "EFS Security Group" \
  --vpc-id $VPC_ID \
  --query 'GroupId' \
  --output text)

echo "SG_ID=$SG_ID"
