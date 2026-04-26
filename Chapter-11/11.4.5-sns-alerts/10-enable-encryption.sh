aws sns set-topic-attributes \
  --topic-arn $TOPIC_ARN \
  --attribute-name KmsMasterKeyId \
  --attribute-value alias/aws/sns \
  --region $REGION
