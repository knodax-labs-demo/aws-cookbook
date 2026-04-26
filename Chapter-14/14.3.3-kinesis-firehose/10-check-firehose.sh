aws firehose describe-delivery-stream \
  --delivery-stream-name $FIREHOSE_STREAM_NAME \
  --region $REGION \
  --query "DeliveryStreamDescription.DeliveryStreamStatus"
