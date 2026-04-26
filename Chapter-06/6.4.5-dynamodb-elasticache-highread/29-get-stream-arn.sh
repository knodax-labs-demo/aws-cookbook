aws dynamodb describe-table \
  --table-name Products \
  --query "Table.LatestStreamArn" \
  --output text
