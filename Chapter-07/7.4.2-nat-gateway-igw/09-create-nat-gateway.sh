NAT_GW_ID=$(aws ec2 create-nat-gateway \
  --subnet-id $PUBLIC_SUBNET_ID \
  --allocation-id $EIP_ALLOC_ID \
  --query 'NatGateway.NatGatewayId' \
  --output text)

echo "NAT_GW_ID=$NAT_GW_ID"
