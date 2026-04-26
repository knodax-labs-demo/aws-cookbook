ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION=$(aws configure get region)

aws glue create-crawler \
  --name knodax-crawler \
  --role arn:aws:iam::$ACCOUNT_ID:role/GlueCrawlerRole \
  --database-name $DB_NAME \
  --targets "{\"S3Targets\":[{\"Path\":\"s3://$BUCKET_NAME/data/\"}]}"
