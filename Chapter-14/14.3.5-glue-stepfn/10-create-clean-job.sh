aws glue create-job \
  --name churn-clean-job \
  --role GlueServiceRole \
  --command Name=glueetl,ScriptLocation=s3://$RAW_BUCKET/clean_job.py \
  --glue-version 3.0 \
  --number-of-workers 2 \
  --worker-type G.1X

aws glue start-job-run --job-name churn-clean-job
