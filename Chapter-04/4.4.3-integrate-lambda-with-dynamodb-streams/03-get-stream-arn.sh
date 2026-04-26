STREAM_ARN=$(aws dynamodb describe-table \
  --table-name Orders \
  --query "Table.LatestStreamArn" \
  --output text)

echo $STREAM_ARN
