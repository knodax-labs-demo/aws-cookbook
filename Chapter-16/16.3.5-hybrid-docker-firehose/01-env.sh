#! /bin/bash
export AWS_REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export BUCKET_NAME=hybrid-edge-demo-data-$ACCOUNT_ID
export DELIVERY_STREAM=edge-events
export PRODUCER_USER=edge-producer
export FIREHOSE_ROLE=firehose_delivery_role

chmod +x env.sh
source env.sh
