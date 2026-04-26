aws glue start-job-run \
  --job-name $JOB_NAME \
  --region $REGION

aws glue get-job-runs \
  --job-name $JOB_NAME \
  --region $REGION
