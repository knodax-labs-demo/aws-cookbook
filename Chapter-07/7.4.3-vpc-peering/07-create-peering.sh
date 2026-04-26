PCX_ID=$(aws ec2 create-vpc-peering-connection \
  --vpc-id $VPC1_ID \
  --peer-vpc-id $VPC2_ID \
  --region $REGION \
  --query 'VpcPeeringConnection.VpcPeeringConnectionId' \
  --output text)

echo "Peering Connection: $PCX_ID"
