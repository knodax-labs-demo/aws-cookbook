export PRIMARY_BUCKET=warm-standby-primary-$RANDOM
export DR_BUCKET=warm-standby-dr-$RANDOM

aws s3api create-bucket \
  --bucket $PRIMARY_BUCKET \
  --region $PRIMARY_REGION

aws s3api create-bucket \
  --bucket $DR_BUCKET \
  --region $DR_REGION \
  --create-bucket-configuration LocationConstraint=$DR_REGION
