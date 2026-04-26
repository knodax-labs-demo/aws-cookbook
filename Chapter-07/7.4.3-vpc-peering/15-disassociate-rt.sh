ASSOC1=$(aws ec2 describe-route-tables \
  --route-table-ids $RTB1_ID \
  --query 'RouteTables[0].Associations[0].RouteTableAssociationId' \
  --output text)

ASSOC2=$(aws ec2 describe-route-tables \
  --route-table-ids $RTB2_ID \
  --query 'RouteTables[0].Associations[0].RouteTableAssociationId' \
  --output text)

aws ec2 disassociate-route-table --association-id $ASSOC1
aws ec2 disassociate-route-table --association-id $ASSOC2
