aws sns publish \
  --topic-arn $TOPIC_ARN \
  --message "Test notification from SNS" \
  --subject "SNS Test Alert" \
  --region $REGION
