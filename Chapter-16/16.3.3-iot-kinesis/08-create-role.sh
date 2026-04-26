aws iam create-role \
  --role-name IoTRuleKinesisRole \
  --assume-role-policy-document file://trust-policy.json

aws iam attach-role-policy \
  --role-name IoTRuleKinesisRole \
  --policy-arn arn:aws:iam::aws:policy/AmazonKinesisFullAccess

export ROLE_ARN=$(aws iam get-role \
  --role-name IoTRuleKinesisRole \
  --query 'Role.Arn' \
  --output text)
