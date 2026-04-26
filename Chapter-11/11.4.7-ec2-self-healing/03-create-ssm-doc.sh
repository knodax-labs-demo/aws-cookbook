aws ssm create-document \
  --name "EC2-Tiered-Recovery" \
  --document-type Automation \
  --content file://recover-ec2.json
