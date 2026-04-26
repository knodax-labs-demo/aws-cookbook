aws ec2 create-route \
  --route-table-id rtb-xxxx \
  --destination-cidr-block 192.168.0.0/16 \
  --gateway-id vgw-xxxx
