aws logs put-resource-policy \
  --policy-name FirehoseAccessPolicy \
  --policy-document "{
    \"Version\": \"2012-10-17\",
    \"Statement\": [{
      \"Effect\": \"Allow\",
      \"Principal\": {\"Service\": \"logs.$REGION.amazonaws.com\"},
      \"Action\": \"firehose:PutRecord\",
      \"Resource\": \"arn:aws:firehose:$REGION:$ACCOUNT_ID:deliverystream/$FIREHOSE_NAME\"
    }]
  }"
