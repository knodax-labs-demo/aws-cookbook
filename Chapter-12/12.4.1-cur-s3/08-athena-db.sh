aws athena start-query-execution \
  --query-string "CREATE DATABASE IF NOT EXISTS cur_db;" \
  --result-configuration OutputLocation=s3://$CUR_BUCKET/athena-results/
