aws dynamodb update-item \
  --table-name Orders \
  --key '{"OrderId":{"S":"ORD123"}}' \
  --update-expression "SET Amount = :a" \
  --expression-attribute-values '{":a":{"N":"250"}}'
