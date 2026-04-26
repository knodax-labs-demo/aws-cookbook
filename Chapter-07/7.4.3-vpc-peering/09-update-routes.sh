aws ec2 create-route \
  --route-table-id $RTB1_ID \
  --destination-cidr-block $VPC2_CIDR \
  --vpc-peering-connection-id $PCX_ID

aws ec2 create-route \
  --route-table-id $RTB2_ID \
  --destination-cidr-block $VPC1_CIDR \
  --vpc-peering-connection-id $PCX_ID
