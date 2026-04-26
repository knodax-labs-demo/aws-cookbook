aws logs create-log-group \
  --log-group-name $LOG_GROUP_NAME \
  --region $REGION

aws logs create-log-stream \
  --log-group-name $LOG_GROUP_NAME \
  --log-stream-name test-stream \
  --region $REGION
