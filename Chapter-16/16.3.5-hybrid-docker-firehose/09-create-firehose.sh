aws firehose create-delivery-stream \
  --delivery-stream-name $DELIVERY_STREAM \
  --delivery-stream-type DirectPut \
  --extended-s3-destination-configuration "{
    \"RoleARN\": \"arn:aws:iam::$ACCOUNT_ID:role/$FIREHOSE_ROLE\",
    \"BucketARN\": \"arn:aws:s3:::$BUCKET_NAME\",
    \"Prefix\": \"edge-events/\",
    \"ErrorOutputPrefix\": \"firehose-errors/!{firehose:error-output-type}/\",
    \"BufferingHints\": {
      \"SizeInMBs\": 5,
      \"IntervalInSeconds\": 60
    },
    \"CompressionFormat\": \"GZIP\",
    \"CloudWatchLoggingOptions\": {
      \"Enabled\": true,
      \"LogGroupName\": \"/aws/kinesisfirehose/$DELIVERY_STREAM\",
      \"LogStreamName\": \"S3Delivery\"
    }
  }"

aws firehose describe-delivery-stream \
  --delivery-stream-name $DELIVERY_STREAM \
  --query 'DeliveryStreamDescription.DeliveryStreamStatus' \
  --output text
