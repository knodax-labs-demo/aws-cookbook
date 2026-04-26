aws lambda create-function \
  --function-name $FUNCTION_NAME \
  --runtime python3.9 \
  --role arn:aws:iam::$ACCOUNT_ID:role/$ROLE_NAME \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://image-processor.zip \
  --timeout 30 \
  --memory-size 128 \
  --region $REGION
