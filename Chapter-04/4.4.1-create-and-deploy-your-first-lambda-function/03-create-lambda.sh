aws lambda create-function \
  --function-name HelloLambda \
  --runtime python3.12 \
  --role arn:aws:iam::<account-id>:role/LambdaExecutionRole \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip
