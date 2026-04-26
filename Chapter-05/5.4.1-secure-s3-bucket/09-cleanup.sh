# Deletes the bucket contents
aws s3 rm s3://secure-data-bucket-<account-id> --recursive 

# Deletes the bucket
aws s3api delete-bucket \
  --bucket secure-data-bucket-<account-id> \
  --region <region>
