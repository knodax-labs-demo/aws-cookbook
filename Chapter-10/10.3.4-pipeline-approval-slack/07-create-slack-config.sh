aws chatbot create-slack-channel-configuration \
  --slack-channel-id "<SLACK_CHANNEL_ID>" \
  --slack-workspace-id "<SLACK_WORKSPACE_ID>" \
  --configuration-name "DeploymentsRoom" \
  --iam-role-arn arn:aws:iam::123456789012:role/ChatbotNotificationsRole \
  --sns-topic-arns arn:aws:sns:us-east-1:123456789012:PipelineNotifications
