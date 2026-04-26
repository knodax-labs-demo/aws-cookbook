aws sns set-topic-attributes \
  --topic-arn $TOPIC_ARN \
  --attribute-name Policy \
  --attribute-value file://sns-topic-policy.json \
  --region $REGION
