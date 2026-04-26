aws s3control put-public-access-block   --account-id $ACCOUNT_ID   --public-access-block-configuration '{
    "BlockPublicAcls": false,
    "IgnorePublicAcls": false,
    "BlockPublicPolicy": false,
    "RestrictPublicBuckets": false
  }'   --region $REGION
