aws securityhub enable-security-hub
aws organizations register-delegated-administrator \
  --account-id <SECURITY_ACCOUNT_ID> \
  --service-principal securityhub.amazonaws.com
