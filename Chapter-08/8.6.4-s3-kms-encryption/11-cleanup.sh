aws s3 rm s3://$BUCKET_NAME --recursive

aws s3api delete-bucket \
  --bucket $BUCKET_NAME \
  --region $REGION

aws kms disable-key --key-id $KEY_ID --region $REGION

aws kms schedule-key-deletion \
  --key-id $KEY_ID \
  --pending-window-in-days 7 \
  --region $REGION
