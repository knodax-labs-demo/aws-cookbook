aws iam create-role \
  --role-name EC2SchedulerLambdaRole \
  --assume-role-policy-document file://trust-policy.json
