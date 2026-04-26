aws firehose delete-delivery-stream \
  --delivery-stream-name $DELIVERY_STREAM \
  --allow-force-delete

aws iam delete-user-policy \
  --user-name $PRODUCER_USER \
  --policy-name FirehoseProducerInline

aws iam delete-user --user-name $PRODUCER_USER

aws iam delete-role-policy \
  --role-name $FIREHOSE_ROLE \
  --policy-name FirehoseDeliveryToS3

aws iam delete-role --role-name $FIREHOSE_ROLE

aws logs delete-log-stream \
  --log-group-name /aws/kinesisfirehose/$DELIVERY_STREAM \
  --log-stream-name S3Delivery

aws logs delete-log-group \
  --log-group-name /aws/kinesisfirehose/$DELIVERY_STREAM

aws s3 rm s3://$BUCKET_NAME --recursive
aws s3 rb s3://$BUCKET_NAME
