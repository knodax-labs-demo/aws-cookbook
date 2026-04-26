aws iam put-role-policy \
  --role-name $CWLOGS_ROLE_NAME \
  --policy-name CloudWatchLogsToFirehosePolicy \
  --policy-document file://cwlogs-firehose-policy.json \
  --region $REGION
