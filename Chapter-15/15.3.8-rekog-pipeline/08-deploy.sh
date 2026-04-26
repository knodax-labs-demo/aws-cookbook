zip function.zip lambda.py

aws lambda create-function \
  --function-name RekogIngestFn \
  --runtime python3.11 \
  --role arn:aws:iam::$(aws sts get-caller-identity --query Account --output text):role/RekogIngestRole \
  --handler lambda.lambda_handler \
  --timeout 60 \
  --memory-size 256 \
  --environment "Variables={TABLE_NAME=ImageMetadata,MAX_LABELS=12,MIN_CONFIDENCE=80}" \
  --zip-file fileb://function.zip
