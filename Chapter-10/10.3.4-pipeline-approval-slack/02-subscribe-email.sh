aws sns subscribe \
  --topic-arn arn:aws:sns:us-east-1:123456789012:PipelineNotifications \
  --protocol email \
  --notification-endpoint you@example.com
