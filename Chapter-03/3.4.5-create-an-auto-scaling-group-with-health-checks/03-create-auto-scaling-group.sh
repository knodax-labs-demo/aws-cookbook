aws autoscaling create-auto-scaling-group \
  --auto-scaling-group-name WebAppASG \
  --launch-template LaunchTemplateName=WebServerLT,Version=1 \
  --min-size 1 \
  --max-size 3 \
  --desired-capacity 2 \
  --vpc-zone-identifier "<subnet-id-1>,<subnet-id-2>" \
  --target-group-arns arn:aws:elasticloadbalancing:<region>:<account-id>:targetgroup/WebAppTG/<target-group-id> \
  --health-check-type ELB \
  --health-check-grace-period 300
