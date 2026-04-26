aws glue create-crawler \
  --name churn-clean-crawler \
  --role GlueServiceRole \
  --database-name churn_db \
  --targets S3Targets=[{Path="s3://$CLEAN_BUCKET/"}]

aws glue start-crawler --name churn-clean-crawler
