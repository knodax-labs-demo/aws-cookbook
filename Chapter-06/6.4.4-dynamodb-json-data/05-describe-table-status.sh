aws dynamodb describe-table \
  --table-name $TABLE_NAME \
  --region $REGION \
  --query "Table.TableStatus"
