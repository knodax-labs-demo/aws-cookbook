aws ec2 authorize-security-group-ingress \
  --group-id $SG1_ID \
  --protocol -1 \
  --cidr $VPC2_CIDR

aws ec2 authorize-security-group-ingress \
  --group-id $SG2_ID \
  --protocol -1 \
  --cidr $VPC1_CIDR
