RTB1=$(aws ec2 describe-route-tables   --filters Name=vpc-id,Values=$VPC1_ID   --query 'RouteTables[0].RouteTableId'   --output text)

RTB2=$(aws ec2 describe-route-tables   --filters Name=vpc-id,Values=$VPC2_ID   --query 'RouteTables[0].RouteTableId'   --output text)
