export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

export STREAM_NAME=MLStreamingInput
export FIREHOSE_STREAM_NAME=stream-to-s3
export DIRECT_FIREHOSE_STREAM_NAME=direct-stream-to-s3

export BUCKET_NAME=kinesis-firehose-demo-$ACCOUNT_ID
export ROLE_NAME=FirehoseDeliveryRole
