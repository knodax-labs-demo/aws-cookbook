aws events put-targets \
  --rule CodePipeline-State-Changes \
  --targets "Id"="sns","Arn"="arn:aws:sns:us-east-1:123456789012:PipelineNotifications"
