aws iam create-role \
  --role-name ChatbotNotificationsRole \
  --assume-role-policy-document file://trust-policy.json
