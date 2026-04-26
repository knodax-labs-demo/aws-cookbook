aws ec2 delete-route \
  --route-table-id $RTB1_ID \
  --destination-cidr-block $VPC2_CIDR

aws ec2 delete-route \
  --route-table-id $RTB2_ID \
  --destination-cidr-block $VPC1_CIDR
