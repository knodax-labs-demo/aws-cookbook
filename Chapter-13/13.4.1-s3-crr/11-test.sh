echo "CRR test file" > test.txt
aws s3 cp test.txt s3://$SRC_BUCKET/

aws s3 ls s3://$DEST_BUCKET/
