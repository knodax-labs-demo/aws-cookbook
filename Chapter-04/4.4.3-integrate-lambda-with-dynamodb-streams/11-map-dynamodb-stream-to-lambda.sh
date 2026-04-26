aws lambda create-event-source-mapping \
  --function-name ProcessOrderStream \
  --event-source-arn "$STREAM_ARN" \
  --starting-position LATEST \
  --batch-size 10
