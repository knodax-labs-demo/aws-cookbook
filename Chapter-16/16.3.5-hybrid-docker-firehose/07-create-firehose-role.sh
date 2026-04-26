aws iam create-role \
  --role-name $FIREHOSE_ROLE \
  --assume-role-policy-document file://firehose-trust-policy.json

aws iam put-role-policy \
  --role-name $FIREHOSE_ROLE \
  --policy-name FirehoseDeliveryToS3 \
  --policy-document file://firehose-delivery-policy.json
