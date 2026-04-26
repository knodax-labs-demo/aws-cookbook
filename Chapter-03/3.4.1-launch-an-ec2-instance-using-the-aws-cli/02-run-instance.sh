aws ec2 run-instances \
  --image-id <ami-id> \
  --count 1 \
  --instance-type t3.micro \
  --subnet-id <subnet-id> \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=CLIDemoInstance}]'
