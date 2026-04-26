ROLE_ARN=$(aws iam get-role \
  --role-name $ROLE_NAME \
  --query 'Role.Arn' \
  --output text)

aws firehose create-delivery-stream \
  --delivery-stream-name $FIREHOSE_NAME \
  --delivery-stream-type DirectPut \
  --extended-s3-destination-configuration "{
    \"RoleARN\":\"$ROLE_ARN\",
    \"BucketARN\":\"arn:aws:s3:::$BUCKET_NAME\",
    \"Prefix\":\"logs/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/\",
    \"ErrorOutputPrefix\":\"errors/\",
    \"CompressionFormat\":\"GZIP\"
  }"
