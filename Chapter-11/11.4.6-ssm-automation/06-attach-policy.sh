aws iam put-role-policy \
  --role-name $AUTOMATION_ROLE_NAME \
  --policy-name EC2RestartPolicy \
  --policy-document file://automation-policy.json
