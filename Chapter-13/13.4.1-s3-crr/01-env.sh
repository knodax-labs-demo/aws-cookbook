export SRC_BUCKET=knodax-src-bucket-$(date +%s)
export DEST_BUCKET=knodax-dest-bucket-$(date +%s)
export SRC_REGION=us-east-1
export DEST_REGION=us-west-2
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
