QUERY_ID=$(aws athena start-query-execution \
  --query-string file://query-cur-cost.sql \
  --result-configuration OutputLocation=s3://$CUR_BUCKET/athena-results/ \
  --region us-east-1 \
  --query 'QueryExecutionId' \
  --output text)

echo $QUERY_ID
