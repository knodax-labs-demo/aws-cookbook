aws s3 ls s3://$OUTPUT_BUCKET/output/ --recursive
aws s3 cp s3://$OUTPUT_BUCKET/output/ ./databrew-output/ --recursive
