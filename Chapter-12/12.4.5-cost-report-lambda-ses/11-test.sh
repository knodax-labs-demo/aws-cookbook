aws lambda invoke \
  --function-name $FUNCTION_NAME \
  --payload '{}' \
  --cli-binary-format raw-in-base64-out \
  --region $REGION \
  response.json

cat response.json
