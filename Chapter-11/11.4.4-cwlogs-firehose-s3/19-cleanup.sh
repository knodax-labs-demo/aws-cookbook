aws logs delete-subscription-filter \
  --log-group-name $LOG_GROUP_NAME \
  --filter-name S3Stream

aws firehose delete-delivery-stream \
  --delivery-stream-name $FIREHOSE_NAME

aws iam delete-role-policy \
  --role-name $ROLE_NAME \
  --policy-name FirehoseS3Policy

aws iam delete-role \
  --role-name $ROLE_NAME

aws s3 rm s3://$BUCKET_NAME --recursive
aws s3 rb s3://$BUCKET_NAME
