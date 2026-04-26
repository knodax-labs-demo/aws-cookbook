aws glue delete-crawler --name knodax-crawler

aws glue delete-database --name $DB_NAME

aws iam detach-role-policy \
  --role-name GlueCrawlerRole \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole

aws iam delete-role-policy \
  --role-name GlueCrawlerRole \
  --policy-name S3AccessPolicy

aws iam delete-role --role-name GlueCrawlerRole

aws s3 rm s3://$BUCKET_NAME --recursive
aws s3 rb s3://$BUCKET_NAME
