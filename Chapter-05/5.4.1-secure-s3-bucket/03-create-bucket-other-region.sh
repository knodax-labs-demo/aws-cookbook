aws s3api create-bucket \
  --bucket secure-data-bucket-<account-id> \
  --region us-west-2 \
  --create-bucket-configuration LocationConstraint=us-west-2
