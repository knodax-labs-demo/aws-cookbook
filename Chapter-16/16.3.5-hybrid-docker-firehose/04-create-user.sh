aws iam create-user --user-name $PRODUCER_USER

aws iam put-user-policy \
  --user-name $PRODUCER_USER \
  --policy-name FirehoseProducerInline \
  --policy-document file://firehose-producer-policy.json

aws iam create-access-key --user-name $PRODUCER_USER
