aws s3api put-bucket-versioning \
  --bucket $PRIMARY_BUCKET \
  --versioning-configuration Status=Enabled

aws s3api put-bucket-versioning \
  --bucket $DR_BUCKET \
  --versioning-configuration Status=Enabled
