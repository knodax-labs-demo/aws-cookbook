export PRIMARY_INSTANCE_ID=$(aws ec2 run-instances \
  --image-id $PRIMARY_AMI_ID \
  --instance-type t3.micro \
  --region $PRIMARY_REGION \
  --query "Instances[0].InstanceId" \
  --output text)

export DR_INSTANCE_ID=$(aws ec2 run-instances \
  --image-id $DR_AMI_ID \
  --instance-type t3.micro \
  --region $DR_REGION \
  --query "Instances[0].InstanceId" \
  --output text)
