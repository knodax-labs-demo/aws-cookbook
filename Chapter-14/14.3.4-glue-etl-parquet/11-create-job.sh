aws glue create-job \
  --name $JOB_NAME \
  --role $ROLE_ARN \
  --command Name=glueetl,ScriptLocation=s3://$BUCKET_NAME/scripts/etl-script.py \
  --default-arguments '{"--job-language":"python"}' \
  --glue-version "4.0" \
  --region $REGION
