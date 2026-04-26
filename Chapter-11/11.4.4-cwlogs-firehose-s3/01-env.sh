REGION=us-east-1
ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

BUCKET_NAME=app-logs-archive-$ACCOUNT_ID
FIREHOSE_NAME=cw-logs-to-s3
LOG_GROUP_NAME=/aws/lambda/MyAppFunction
ROLE_NAME=FirehoseDeliveryRole
