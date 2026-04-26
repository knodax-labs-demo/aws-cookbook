aws s3api put-bucket-notification-configuration \
  --bucket $SOURCE_BUCKET \
  --notification-configuration "{
    \"LambdaFunctionConfigurations\": [
      {
        \"LambdaFunctionArn\": \"arn:aws:lambda:$REGION:$ACCOUNT_ID:function:$FUNCTION_NAME\",
        \"Events\": [\"s3:ObjectCreated:*\"],
        \"Filter\": {
          \"Key\": {
            \"FilterRules\": [
              {\"Name\": \"suffix\", \"Value\": \".jpg\"}
            ]
          }
        }
      }
    ]
  }"
