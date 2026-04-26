aws iam create-role \
  --role-name CodeDeployECSRole \
  --assume-role-policy-document file://codedeploy-trust.json

aws iam attach-role-policy \
  --role-name CodeDeployECSRole \
  --policy-arn arn:aws:iam::aws:policy/AWSCodeDeployRoleForECS
