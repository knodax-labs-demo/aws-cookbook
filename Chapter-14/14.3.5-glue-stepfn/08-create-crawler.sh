aws glue create-crawler \
  --name churn-raw-crawler \
  --role GlueServiceRole \
  --database-name churn_db \
  --targets S3Targets=[{Path="s3://$RAW_BUCKET/"}]

aws glue start-crawler --name churn-raw-crawler

aws glue get-crawler --name churn-raw-crawler \
  --query 'Crawler.{State:State,LastCrawl:LastCrawl,Targets:Targets}'
