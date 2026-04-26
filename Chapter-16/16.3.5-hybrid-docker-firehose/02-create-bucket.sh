aws s3 mb s3://$BUCKET_NAME --region $AWS_REGION
aws s3 ls | grep $BUCKET_NAME
