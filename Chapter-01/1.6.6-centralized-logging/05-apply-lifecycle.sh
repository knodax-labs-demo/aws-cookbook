#!/bin/bash

ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
BUCKET_NAME=centralized-log-bucket-$ACCOUNT_ID

aws s3api put-bucket-lifecycle-configuration   --bucket $BUCKET_NAME   --lifecycle-configuration file://04-lifecycle-policy.json

echo "Lifecycle policy applied"
