aws glue delete-job --job-name churn-clean-job
aws glue delete-job --job-name churn-aggregate-job

aws glue delete-crawler --name churn-raw-crawler
aws glue delete-crawler --name churn-clean-crawler

aws glue delete-database --name churn_db

aws s3 rb s3://$RAW_BUCKET --force
aws s3 rb s3://$CLEAN_BUCKET --force
aws s3 rb s3://$OUTPUT_BUCKET --force

aws stepfunctions delete-state-machine \
  --state-machine-arn <STATE_MACHINE_ARN>
