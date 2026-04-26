aws logs create-log-group \
  --log-group-name /aws/kinesisfirehose/$DELIVERY_STREAM

aws logs create-log-stream \
  --log-group-name /aws/kinesisfirehose/$DELIVERY_STREAM \
  --log-stream-name S3Delivery
