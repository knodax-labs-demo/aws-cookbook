aws s3 ls s3://$BUCKET_NAME/output/ --recursive

aws s3 cp s3://$BUCKET_NAME/output/ ./output/ --recursive
