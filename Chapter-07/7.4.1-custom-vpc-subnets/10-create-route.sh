aws ec2 create-route   --route-table-id $PUBLIC_RT   --destination-cidr-block 0.0.0.0/0   --gateway-id $IGW_ID
