#!/bin/bash

ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
BUCKET_NAME=centralized-log-bucket-$ACCOUNT_ID
REGION=us-east-1

aws s3api create-bucket --bucket $BUCKET_NAME --region $REGION

aws s3api put-bucket-versioning --bucket $BUCKET_NAME --versioning-configuration Status=Enabled

aws s3api put-bucket-encryption --bucket $BUCKET_NAME --server-side-encryption-configuration '{
  "Rules": [{
    "ApplyServerSideEncryptionByDefault": {
      "SSEAlgorithm": "AES256"
    }
  }]
}'

aws s3api put-public-access-block   --bucket $BUCKET_NAME   --public-access-block-configuration BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true

echo "Bucket created: $BUCKET_NAME"
