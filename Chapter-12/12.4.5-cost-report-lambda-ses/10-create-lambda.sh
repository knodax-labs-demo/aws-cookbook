aws lambda create-function \
  --function-name $FUNCTION_NAME \
  --runtime python3.12 \
  --role $ROLE_ARN \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip \
  --timeout 30 \
  --memory-size 128 \
  --environment "Variables={SENDER_EMAIL=$SENDER_EMAIL,RECIPIENT_EMAIL=$RECIPIENT_EMAIL,SES_REGION=$REGION}" \
  --region $REGION
