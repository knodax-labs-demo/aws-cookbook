aws databrew start-job-run \
  --name $JOB_NAME \
  --region $REGION

aws databrew list-job-runs \
  --name $JOB_NAME \
  --region $REGION
