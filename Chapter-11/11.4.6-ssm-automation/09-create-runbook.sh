aws ssm create-document \
  --name $RUNBOOK_NAME \
  --document-type Automation \
  --content file://restart-ec2.json \
  --region $REGION
