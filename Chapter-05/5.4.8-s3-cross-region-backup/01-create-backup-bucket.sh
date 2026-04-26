aws s3api create-bucket \
  --bucket myapp-backup-<account-ID>-usw2 \
  --region us-west-2 \
  --create-bucket-configuration LocationConstraint=us-west-2
