echo "Version 1" > demo.txt
aws s3 cp demo.txt s3://$BUCKET_NAME/

echo "Version 2" > demo.txt
aws s3 cp demo.txt s3://$BUCKET_NAME/

aws s3api list-object-versions \
  --bucket $BUCKET_NAME
