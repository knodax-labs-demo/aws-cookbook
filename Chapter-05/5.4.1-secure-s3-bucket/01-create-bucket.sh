aws s3api create-bucket \
  --bucket secure-data-bucket-<account-id> \
  --region <region> \
  --create-bucket-configuration LocationConstraint=<region>
