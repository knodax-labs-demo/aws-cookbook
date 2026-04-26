export SNAP_ID=<snapshot-id>
aws ec2 copy-snapshot \
  --source-region $REGION \
  --source-snapshot-id $SNAP_ID \
  --encrypted \
  --kms-key-id $KEY_ALIAS \
  --region $REGION
