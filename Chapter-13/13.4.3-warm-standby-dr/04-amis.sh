export PRIMARY_AMI_ID=$(aws ec2 describe-images \
  --owners amazon \
  --region $PRIMARY_REGION \
  --filters "Name=name,Values=amzn2-ami-hvm-*-x86_64-gp2" \
            "Name=state,Values=available" \
  --query "sort_by(Images, &CreationDate)[-1].ImageId" \
  --output text)

export DR_AMI_ID=$(aws ec2 describe-images \
  --owners amazon \
  --region $DR_REGION \
  --filters "Name=name,Values=amzn2-ami-hvm-*-x86_64-gp2" \
            "Name=state,Values=available" \
  --query "sort_by(Images, &CreationDate)[-1].ImageId" \
  --output text)
