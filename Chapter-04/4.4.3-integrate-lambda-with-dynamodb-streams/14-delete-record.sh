aws dynamodb delete-item \
  --table-name Orders \
  --key '{"OrderId":{"S":"ORD123"}}'
