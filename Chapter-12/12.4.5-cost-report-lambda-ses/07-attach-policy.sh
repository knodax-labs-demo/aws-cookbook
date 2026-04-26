POLICY_ARN=$(aws iam create-policy \
  --policy-name DailyCostReportPolicy \
  --policy-document file://cost-report-policy.json \
  --query 'Policy.Arn' \
  --output text)

aws iam attach-role-policy \
  --role-name $ROLE_NAME \
  --policy-arn $POLICY_ARN

ROLE_ARN=$(aws iam get-role \
  --role-name $ROLE_NAME \
  --query 'Role.Arn' \
  --output text)

echo $ROLE_ARN
