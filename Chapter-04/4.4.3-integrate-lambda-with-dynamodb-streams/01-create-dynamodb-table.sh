aws dynamodb create-table \
  --table-name Orders \
  --attribute-definitions AttributeName=OrderId,AttributeType=S \
  --key-schema AttributeName=OrderId,KeyType=HASH \
  --billing-mode PAY_PER_REQUEST \
  --stream-specification StreamEnabled=true,StreamViewType=NEW_AND_OLD_IMAGES
