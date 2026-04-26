aws s3api put-bucket-versioning \
  --bucket $SRC_BUCKET \
  --versioning-configuration Status=Enabled

aws s3api put-bucket-versioning \
  --bucket $DEST_BUCKET \
  --versioning-configuration Status=Enabled
