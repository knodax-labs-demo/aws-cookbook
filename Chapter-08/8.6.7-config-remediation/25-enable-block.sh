aws s3control put-public-access-block   --account-id $ACCOUNT_ID   --public-access-block-configuration '{
    "BlockPublicAcls": true,
    "IgnorePublicAcls": true,
    "BlockPublicPolicy": true,
    "RestrictPublicBuckets": true
  }'   --region $REGION
