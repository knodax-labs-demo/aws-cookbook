export AWS_PROFILE=management-account

aws organizations deregister-delegated-administrator \
  --account-id <SECURITY_ACCOUNT_ID> \
  --service-principal securityhub.amazonaws.com
