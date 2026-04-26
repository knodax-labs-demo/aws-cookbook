aws lambda create-function \
  --function-name MyLoggingFunction \
  --runtime python3.12 \
  --role arn:aws:iam::<ACCOUNT_ID>:role/LambdaExecutionRole \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip
