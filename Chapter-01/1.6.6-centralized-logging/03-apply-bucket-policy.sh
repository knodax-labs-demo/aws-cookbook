#!/bin/bash

ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
BUCKET_NAME=centralized-log-bucket-$ACCOUNT_ID

sed "s/<account-id>/$ACCOUNT_ID/g" 02-bucket-policy.json > policy-temp.json

aws s3api put-bucket-policy   --bucket $BUCKET_NAME   --policy file://policy-temp.json

echo "Bucket policy applied"
