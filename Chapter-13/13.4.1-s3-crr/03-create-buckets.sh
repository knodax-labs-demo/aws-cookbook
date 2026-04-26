aws s3api create-bucket \
  --bucket $SRC_BUCKET \
  --region $SRC_REGION

aws s3api create-bucket \
  --bucket $DEST_BUCKET \
  --region $DEST_REGION \
  --create-bucket-configuration LocationConstraint=$DEST_REGION
