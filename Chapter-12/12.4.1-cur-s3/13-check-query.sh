aws athena get-query-execution \
  --query-execution-id $QUERY_ID \
  --region us-east-1 \
  --query 'QueryExecution.Status.State' \
  --output text
