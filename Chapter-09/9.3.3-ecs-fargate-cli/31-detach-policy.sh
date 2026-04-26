aws iam detach-role-policy \
  --role-name ECSFargateExecutionRole \
  --policy-arn arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy
