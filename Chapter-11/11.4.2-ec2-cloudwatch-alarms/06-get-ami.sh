AMI_ID=$(aws ssm get-parameter \
  --name /aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64 \
  --region $REGION \
  --query 'Parameter.Value' \
  --output text)

echo $AMI_ID
