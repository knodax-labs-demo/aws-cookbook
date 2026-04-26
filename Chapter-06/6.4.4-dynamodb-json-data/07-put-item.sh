aws dynamodb put-item \
  --table-name $TABLE_NAME \
  --item file://item.json \
  --region $REGION
