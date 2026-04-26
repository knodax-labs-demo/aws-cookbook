RTB1_ID=$(aws ec2 create-route-table \
  --vpc-id $VPC1_ID \
  --region $REGION \
  --query 'RouteTable.RouteTableId' \
  --output text)

RTB2_ID=$(aws ec2 create-route-table \
  --vpc-id $VPC2_ID \
  --region $REGION \
  --query 'RouteTable.RouteTableId' \
  --output text)

aws ec2 associate-route-table --subnet-id $SUBNET1_ID --route-table-id $RTB1_ID
aws ec2 associate-route-table --subnet-id $SUBNET2_ID --route-table-id $RTB2_ID
