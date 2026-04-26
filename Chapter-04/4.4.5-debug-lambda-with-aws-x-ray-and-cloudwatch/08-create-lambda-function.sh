aws lambda create-function \
  --function-name HelloAPI \
  --runtime python3.9 \
  --role arn:aws:iam::<account-id>:role/LambdaXRayRole \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip
