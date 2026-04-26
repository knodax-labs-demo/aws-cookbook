aws kms schedule-key-deletion \
  --key-id $KMS_KEY_ARN \
  --pending-window-in-days 7
