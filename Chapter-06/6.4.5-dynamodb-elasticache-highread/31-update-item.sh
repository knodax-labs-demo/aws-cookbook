aws dynamodb update-item \
  --table-name Products \
  --key '{"pk":{"S":"prod#12345"}}' \
  --update-expression "SET price = :p" \
  --expression-attribute-values '{":p":{"N":"49.99"}}'
