PRIVATE_RT=$(aws ec2 create-route-table   --vpc-id $VPC_ID   --query 'RouteTable.RouteTableId'   --output text)
