aws glue create-crawler \
  --name $CRAWLER_NAME \
  --role $ROLE_ARN \
  --database-name $DB_NAME \
  --targets "{\"S3Targets\":[{\"Path\":\"s3://$BUCKET_NAME/input/\"}]}" \
  --region $REGION

aws glue start-crawler \
  --name $CRAWLER_NAME \
  --region $REGION

aws glue get-crawler \
  --name $CRAWLER_NAME \
  --query "Crawler.State" \
  --region $REGION

aws glue get-tables \
  --database-name $DB_NAME \
  --region $REGION \
  --query "TableList[].Name" \
  --output text

export ACTUAL_TABLE_NAME=$(aws glue get-tables \
  --database-name $DB_NAME \
  --region $REGION \
  --query "TableList[0].Name" \
  --output text)
