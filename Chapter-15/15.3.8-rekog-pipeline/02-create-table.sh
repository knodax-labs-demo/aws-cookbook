aws dynamodb create-table \
  --table-name ImageMetadata \
  --attribute-definitions \
    AttributeName=image_key,AttributeType=S \
    AttributeName=uploaded_at,AttributeType=S \
  --key-schema \
    AttributeName=image_key,KeyType=HASH \
    AttributeName=uploaded_at,KeyType=RANGE \
  --billing-mode PAY_PER_REQUEST
