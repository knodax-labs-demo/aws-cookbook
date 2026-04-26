aws firehose describe-delivery-stream \
  --delivery-stream-name $DIRECT_FIREHOSE_STREAM_NAME \
  --region $REGION \
  --query "DeliveryStreamDescription.DeliveryStreamStatus"
