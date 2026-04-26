aws ec2 delete-snapshot --snapshot-id $SNAP_ID --region $REGION

aws ec2 delete-volume --volume-id $VOLUME_ID --region $REGION

aws kms disable-key --key-id $KEY_ID --region $REGION

aws kms schedule-key-deletion \
  --key-id $KEY_ID \
  --pending-window-in-days 7 \
  --region $REGION
