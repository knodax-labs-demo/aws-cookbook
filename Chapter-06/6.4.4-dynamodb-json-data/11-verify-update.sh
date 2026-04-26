aws dynamodb get-item \
  --table-name $TABLE_NAME \
  --key '{"UserID":{"S":"U1001"}}' \
  --region $REGION
