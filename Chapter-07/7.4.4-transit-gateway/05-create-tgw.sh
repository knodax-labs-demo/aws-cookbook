TGW_ID=$(aws ec2 create-transit-gateway   --description "Enterprise Network Hub"   --options AmazonSideAsn=64512   --query 'TransitGateway.TransitGatewayId'   --output text)
