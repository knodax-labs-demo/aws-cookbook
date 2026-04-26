ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION=us-east-1
BUCKET_NAME=config-bucket-$ACCOUNT_ID
TEST_BUCKET_NAME=test-public-$ACCOUNT_ID
