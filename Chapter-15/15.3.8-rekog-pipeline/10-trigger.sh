aws s3api put-bucket-notification-configuration \
  --bucket my-ai-images-<account-id> \
  --notification-configuration '{
    "LambdaFunctionConfigurations": [{
      "LambdaFunctionArn": "'$(aws lambda get-function \
        --function-name RekogIngestFn \
        --query Configuration.FunctionArn \
        --output text)'",
      "Events": ["s3:ObjectCreated:*"]
    }]
  }'
