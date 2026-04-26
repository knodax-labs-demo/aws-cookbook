aws iam create-role \
  --role-name ECSFargateExecutionRole \
  --assume-role-policy-document file://ecs-trust.json
