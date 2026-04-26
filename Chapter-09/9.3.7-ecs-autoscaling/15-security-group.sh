SG_ID=$(aws ec2 create-security-group \
  --group-name ecs-apache-python-sg \
  --description "Security group for ECS Apache Python app" \
  --vpc-id $VPC_ID \
  --query 'GroupId' \
  --output text \
  --region $REGION)

aws ec2 authorize-security-group-ingress \
  --group-id $SG_ID \
  --protocol tcp \
  --port 80 \
  --cidr 0.0.0.0/0 \
  --region $REGION
