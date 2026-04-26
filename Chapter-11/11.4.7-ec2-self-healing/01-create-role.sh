aws iam create-role \
  --role-name EC2SelfHealRole \
  --assume-role-policy-document '{
    "Version":"2012-10-17",
    "Statement":[{"Effect":"Allow","Principal":{"Service":"lambda.amazonaws.com"},
    "Action":"sts:AssumeRole"}]}'

aws iam attach-role-policy \
  --role-name EC2SelfHealRole \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole

aws iam attach-role-policy \
  --role-name EC2SelfHealRole \
  --policy-arn arn:aws:iam::aws:policy/AmazonSSMFullAccess

aws iam attach-role-policy \
  --role-name EC2SelfHealRole \
  --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess
