aws kinesis create-stream \
  --stream-name $STREAM_NAME \
  --shard-count 1 \
  --region $REGION

aws kinesis wait stream-exists --stream-name $STREAM_NAME --region $REGION
