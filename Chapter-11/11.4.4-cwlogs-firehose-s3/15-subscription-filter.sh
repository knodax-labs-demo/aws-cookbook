CWLOGS_ROLE_ARN=$(aws iam get-role \
  --role-name $CWLOGS_ROLE_NAME \
  --query 'Role.Arn' \
  --output text)

aws logs put-subscription-filter \
  --log-group-name $LOG_GROUP_NAME \
  --filter-name S3Stream \
  --filter-pattern "" \
  --destination-arn arn:aws:firehose:$REGION:$ACCOUNT_ID:deliverystream/$FIREHOSE_NAME \
  --role-arn $CWLOGS_ROLE_ARN \
  --region $REGION
