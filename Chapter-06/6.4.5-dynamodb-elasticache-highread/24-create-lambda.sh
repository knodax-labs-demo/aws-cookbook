aws lambda create-function \
  --function-name ddb-cache-invalidator \
  --runtime python3.9 \
  --role arn:aws:iam::<account-id>:role/LambdaRedisInvalidatorRole \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip \
  --timeout 30
