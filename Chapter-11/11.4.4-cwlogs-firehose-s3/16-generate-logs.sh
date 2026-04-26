for i in {1..100}; do
  aws logs put-log-events \
    --log-group-name $LOG_GROUP_NAME \
    --log-stream-name test-stream \
    --log-events timestamp=$(date +%s000),message="CloudWatch Logs to Firehose to S3 test event $i" \
    --region $REGION
done
