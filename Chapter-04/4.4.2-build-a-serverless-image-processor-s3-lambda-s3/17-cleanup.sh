aws s3 rm s3://$SOURCE_BUCKET --recursive
aws s3 rm s3://$PROCESSED_BUCKET --recursive

aws s3 rb s3://$SOURCE_BUCKET
aws s3 rb s3://$PROCESSED_BUCKET

aws lambda delete-function --function-name $FUNCTION_NAME --region $REGION

aws iam delete-role-policy \
  --role-name $ROLE_NAME \
  --policy-name LambdaS3ImageProcessorPolicy

aws iam detach-role-policy \
  --role-name $ROLE_NAME \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole

aws iam delete-role --role-name $ROLE_NAME
