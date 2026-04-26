aws firehose create-delivery-stream \
  --delivery-stream-name $DIRECT_FIREHOSE_STREAM_NAME \
  --delivery-stream-type DirectPut \
  --s3-destination-configuration RoleARN=$FIREHOSE_ROLE_ARN,BucketARN=arn:aws:s3:::$BUCKET_NAME,Prefix=direct-put/,BufferingHints="{SizeInMBs=1,IntervalInSeconds=60}",CompressionFormat=UNCOMPRESSED \
  --region $REGION
