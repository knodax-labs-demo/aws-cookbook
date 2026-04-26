aws athena start-query-execution \
  --query-string "DROP TABLE cur_db.cost_usage;" \
  --result-configuration OutputLocation=s3://$CUR_BUCKET/athena-results/ \
  --region us-east-1

aws athena start-query-execution \
  --query-string "DROP DATABASE IF EXISTS cur_db;" \
  --result-configuration OutputLocation=s3://$CUR_BUCKET/athena-results/ \
  --region us-east-1
