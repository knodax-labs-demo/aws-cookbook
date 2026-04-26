aws dynamodb create-table \
  --table-name $TABLE_NAME \
  --attribute-definitions AttributeName=UserID,AttributeType=S \
  --key-schema AttributeName=UserID,KeyType=HASH \
  --billing-mode PAY_PER_REQUEST \
  --region $REGION
