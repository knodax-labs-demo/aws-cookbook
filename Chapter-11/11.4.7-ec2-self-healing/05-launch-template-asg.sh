aws ec2 create-launch-template \
  --launch-template-name web-lt \
  --launch-template-data '{
    "ImageId":"ami-xxxxxxxx",
    "InstanceType":"t3.micro",
    "IamInstanceProfile":{"Name":"SSMInstanceProfile"},
    "SecurityGroupIds":["sg-xxxxxxx"]
  }'

aws autoscaling create-auto-scaling-group \
  --auto-scaling-group-name web-asg \
  --launch-template LaunchTemplateName=web-lt,Version='$Latest' \
  --min-size 1 \
  --max-size 3 \
  --desired-capacity 1 \
  --vpc-zone-identifier "subnet-aaaaaaa,subnet-bbbbbbb" \
  --health-check-type EC2 \
  --health-check-grace-period 120
