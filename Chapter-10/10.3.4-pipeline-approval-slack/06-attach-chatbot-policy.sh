aws iam put-role-policy \
  --role-name ChatbotNotificationsRole \
  --policy-name ChatbotPermissions \
  --policy-document file://permissions-policy.json
