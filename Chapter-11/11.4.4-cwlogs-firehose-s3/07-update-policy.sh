sed -i '' "s/BUCKET_NAME_PLACEHOLDER/$BUCKET_NAME/g" firehose-policy.json

aws iam put-role-policy \
  --role-name $ROLE_NAME \
  --policy-name FirehoseS3Policy \
  --policy-document file://firehose-policy.json
