CWLOGS_ROLE_NAME=CloudWatchLogsToFirehoseRole

aws iam create-role \
  --role-name $CWLOGS_ROLE_NAME \
  --assume-role-policy-document file://cwlogs-trust-policy.json \
  --region $REGION
