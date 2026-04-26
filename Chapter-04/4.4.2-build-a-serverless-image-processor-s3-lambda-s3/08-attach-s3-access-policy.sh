aws iam put-role-policy \
  --role-name $ROLE_NAME \
  --policy-name LambdaS3ImageProcessorPolicy \
  --policy-document file://s3-access-policy.json
