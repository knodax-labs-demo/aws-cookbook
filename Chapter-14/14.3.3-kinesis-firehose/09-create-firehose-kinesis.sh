aws firehose create-delivery-stream \
  --delivery-stream-name $FIREHOSE_STREAM_NAME \
  --delivery-stream-type KinesisStreamAsSource \
  --kinesis-stream-source-configuration KinesisStreamARN=arn:aws:kinesis:$REGION:$ACCOUNT_ID:stream/$STREAM_NAME,RoleARN=$FIREHOSE_ROLE_ARN \
  --s3-destination-configuration RoleARN=$FIREHOSE_ROLE_ARN,BucketARN=arn:aws:s3:::$BUCKET_NAME,Prefix=kinesis-source/,BufferingHints="{SizeInMBs=1,IntervalInSeconds=60}",CompressionFormat=UNCOMPRESSED \
  --region $REGION
