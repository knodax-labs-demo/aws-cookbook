INSTANCE_ID=i-xxxxxxxxxxxxxxxxx

aws ssm start-automation-execution \
  --document-name $RUNBOOK_NAME \
  --parameters \
    "InstanceId=$INSTANCE_ID,AutomationAssumeRole=$AUTOMATION_ROLE_ARN" \
  --region $REGION
