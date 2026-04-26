aws sts get-session-token   --profile $DEVUSER_PROFILE   --serial-number arn:aws:iam::$ACCOUNT_ID:mfa/$MFA_DEVICE_NAME   --token-code <CURRENT_CODE>
