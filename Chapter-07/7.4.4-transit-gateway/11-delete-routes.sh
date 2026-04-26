aws ec2 delete-route --route-table-id $RTB1 --destination-cidr-block $VPC2_CIDR
aws ec2 delete-route --route-table-id $RTB2 --destination-cidr-block $VPC1_CIDR
