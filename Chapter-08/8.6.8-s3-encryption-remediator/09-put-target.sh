aws events put-targets --rule S3EncryptionGuardrail --targets "Id"="1","Arn"="arn:aws:lambda:us-east-1:<ACCOUNT_ID>:function:RemediateS3Encryption"
