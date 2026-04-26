aws s3 ls s3://$BUCKET_NAME/kinesis-source/ --recursive

aws s3 cp s3://$BUCKET_NAME/kinesis-source/ ./kinesis-output/ --recursive
cat ./kinesis-output/*
