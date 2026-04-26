aws dynamodb put-item \
  --table-name Products \
  --item '{
    "pk": {"S": "prod#12345"},
    "name": {"S": "Wireless Mouse"},
    "price": {"N": "24.99"},
    "inventory": {"N": "173"},
    "updatedAt": {"S": "2025-03-01T10:22:00Z"}
  }'
