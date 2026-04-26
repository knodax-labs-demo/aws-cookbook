aws iam create-role \
  --role-name $AUTOMATION_ROLE_NAME \
  --assume-role-policy-document file://trust-policy.json
