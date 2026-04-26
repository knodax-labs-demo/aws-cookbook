aws lambda create-function \
  --function-name $LAMBDA_FUNCTION_NAME \
  --runtime python3.12 \
  --role $LAMBDA_ROLE_ARN \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip \
  --region $REGION

aws lambda get-function-configuration \
  --function-name $LAMBDA_FUNCTION_NAME \
  --region $REGION \
  --query '[FunctionName,State,LastUpdateStatus]' \
  --output table

aws lambda invoke \
  --function-name $LAMBDA_FUNCTION_NAME \
  --payload '{"source":"manual-test"}' \
  --cli-binary-format raw-in-base64-out \
  response.json \
  --region $REGION

cat response.json
