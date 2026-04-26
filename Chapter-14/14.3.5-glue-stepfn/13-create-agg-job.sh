aws glue create-job \
  --name churn-aggregate-job \
  --role GlueServiceRole \
  --command Name=glueetl,ScriptLocation=s3://$RAW_BUCKET/aggregate_job.py

aws glue start-job-run --job-name churn-aggregate-job
