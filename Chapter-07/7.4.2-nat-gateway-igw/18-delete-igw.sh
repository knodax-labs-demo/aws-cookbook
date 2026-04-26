aws ec2 detach-internet-gateway \
  --internet-gateway-id $IGW_ID \
  --vpc-id $VPC_ID

aws ec2 delete-internet-gateway \
  --internet-gateway-id $IGW_ID
