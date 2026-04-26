aws s3 ls s3://$BUCKET_NAME/direct-put/ --recursive

aws s3 cp s3://$BUCKET_NAME/direct-put/ ./direct-output/ --recursive
cat ./direct-output/*
