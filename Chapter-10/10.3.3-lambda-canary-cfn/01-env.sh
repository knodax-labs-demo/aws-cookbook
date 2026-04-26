export REGION=us-east-1
export BUCKET_NAME=canary-lambda-artifacts-$RANDOM

aws s3 mb s3://$BUCKET_NAME --region $REGION
