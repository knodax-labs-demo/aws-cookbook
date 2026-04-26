zip function.zip lambda_self_heal.py

aws lambda create-function \
  --function-name EC2SelfHeal \
  --runtime python3.11 \
  --role arn:aws:iam::<ACCOUNT_ID>:role/EC2SelfHealRole \
  --handler lambda_self_heal.lambda_handler \
  --zip-file fileb://function.zip
