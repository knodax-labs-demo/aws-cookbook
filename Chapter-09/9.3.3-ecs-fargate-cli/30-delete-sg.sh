SG_ID=$(aws ec2 describe-security-groups \
--filters Name=group-name,Values=webapp-sg \
--query "SecurityGroups[0].GroupId" \
--output text)

aws ec2 delete-security-group \
  --group-id $SG_ID
