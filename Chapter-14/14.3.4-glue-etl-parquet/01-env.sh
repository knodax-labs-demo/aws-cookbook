export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

export BUCKET_NAME=glue-etl-demo-$ACCOUNT_ID
export DB_NAME=glue_etl_db
export TABLE_NAME=customer_data
export CRAWLER_NAME=glue-crawler-demo
export ROLE_NAME=GlueServiceRole
export JOB_NAME=glue-etl-job
