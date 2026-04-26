aws firehose delete-delivery-stream \
  --delivery-stream-name $FIREHOSE_STREAM_NAME \
  --region $REGION

aws firehose delete-delivery-stream \
  --delivery-stream-name $DIRECT_FIREHOSE_STREAM_NAME \
  --region $REGION

aws kinesis delete-stream \
  --stream-name $STREAM_NAME \
  --enforce-consumer-deletion \
  --region $REGION

aws s3 rm s3://$BUCKET_NAME --recursive
aws s3 rb s3://$BUCKET_NAME

aws iam delete-role-policy \
  --role-name $ROLE_NAME \
  --policy-name FirehoseDeliveryPolicy

aws iam delete-role \
  --role-name $ROLE_NAME
