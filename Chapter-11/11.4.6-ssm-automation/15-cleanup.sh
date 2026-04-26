aws events remove-targets \
  --rule $RULE_NAME \
  --ids "1" \
  --region $REGION

aws events delete-rule \
  --name $RULE_NAME \
  --region $REGION

aws ssm delete-document \
  --name $RUNBOOK_NAME \
  --region $REGION

aws iam delete-role-policy \
  --role-name $AUTOMATION_ROLE_NAME \
  --policy-name EC2RestartPolicy

aws iam delete-role \
  --role-name $AUTOMATION_ROLE_NAME

aws ec2 terminate-instances \
  --instance-ids $INSTANCE_ID \
  --region $REGION
