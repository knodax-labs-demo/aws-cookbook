zip function.zip lambda_function.py

aws lambda update-function-code \
  --function-name MyLoggingFunction \
  --zip-file fileb://function.zip
