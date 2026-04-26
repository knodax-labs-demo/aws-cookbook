aws s3api put-bucket-notification-configuration \
  --bucket myapp-prod-<accountID>-use1 \
  --notification-configuration '{
    "LambdaFunctionConfigurations": [
      {
        "Id": "invoke-lambda-on-object-create-delete",
        "LambdaFunctionArn": "arn:aws:lambda:us-east-1:<accountID>:function:s3-xregion-backup",
        "Events": [
          "s3:ObjectCreated:*",
          "s3:ObjectRemoved:*"
        ]
      }
    ]
  }'
