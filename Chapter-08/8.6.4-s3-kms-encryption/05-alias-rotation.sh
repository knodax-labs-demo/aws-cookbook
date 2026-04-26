export KEY_ID=<paste-key-id>
aws kms create-alias \
  --alias-name $KEY_ALIAS \
  --target-key-id $KEY_ID \
  --region $REGION

aws kms enable-key-rotation \
  --key-id $KEY_ID \
  --region $REGION
