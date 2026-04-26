aws dynamodb put-item \
  --table-name Orders \
  --item '{"OrderId":{"S":"ORD123"},"Amount":{"N":"200"}}'
