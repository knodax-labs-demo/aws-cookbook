export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export STREAM_NAME=sensor-data-stream
export THING_NAME=sensor-001
