aws lambda create-function \
  --function-name EC2Scheduler \
  --runtime python3.9 \
  --role arn:aws:iam::<account-id>:role/EC2SchedulerLambdaRole \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip
