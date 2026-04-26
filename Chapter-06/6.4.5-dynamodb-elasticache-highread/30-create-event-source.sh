aws lambda create-event-source-mapping \
  --function-name ddb-cache-invalidator \
  --event-source-arn <STREAM_ARN> \
  --starting-position LATEST
