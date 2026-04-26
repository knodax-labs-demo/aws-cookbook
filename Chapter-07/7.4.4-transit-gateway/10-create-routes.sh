aws ec2 create-route   --route-table-id $RTB1   --destination-cidr-block $VPC2_CIDR   --transit-gateway-id $TGW_ID

aws ec2 create-route   --route-table-id $RTB2   --destination-cidr-block $VPC1_CIDR   --transit-gateway-id $TGW_ID
