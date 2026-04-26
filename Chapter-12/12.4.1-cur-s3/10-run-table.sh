aws athena start-query-execution \
  --query-string file://create-cur-table.sql \
  --result-configuration OutputLocation=s3://$CUR_BUCKET/athena-results/ \
  --region us-east-1
