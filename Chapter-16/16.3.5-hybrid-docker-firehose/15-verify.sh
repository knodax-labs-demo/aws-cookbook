aws s3 ls s3://$BUCKET_NAME/ --recursive --human-readable --summarize

aws firehose describe-delivery-stream \
  --delivery-stream-name $DELIVERY_STREAM \
  --query 'DeliveryStreamDescription.[DeliveryStreamName,DeliveryStreamStatus]' \
  --output table
