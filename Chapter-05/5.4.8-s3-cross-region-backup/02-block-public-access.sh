aws s3api put-public-access-block \
  --bucket myapp-backup-<account-ID>-usw2 \
  --public-access-block-configuration BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true
