ATTACHMENT1=$(aws ec2 create-transit-gateway-vpc-attachment   --transit-gateway-id $TGW_ID   --vpc-id $VPC1_ID   --subnet-ids $SUBNET1A $SUBNET1B   --query 'TransitGatewayVpcAttachment.TransitGatewayAttachmentId'   --output text)

ATTACHMENT2=$(aws ec2 create-transit-gateway-vpc-attachment   --transit-gateway-id $TGW_ID   --vpc-id $VPC2_ID   --subnet-ids $SUBNET2A $SUBNET2B   --query 'TransitGatewayVpcAttachment.TransitGatewayAttachmentId'   --output text)
