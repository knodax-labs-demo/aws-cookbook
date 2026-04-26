SG_ID=$(aws ec2 create-security-group \
  --group-name aurora-sg \
  --description "Aurora access SG" \
  --query GroupId \
  --output text)
