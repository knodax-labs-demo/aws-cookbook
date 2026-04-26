aws glue create-crawler \
  --name sales-raw-crawler \
  --role arn:aws:iam::<account-id>:role/AWSGlueServiceRole \
  --database-name datalake_sales \
  --targets '{"S3Targets":[{"Path":"s3://acme-data-lake-demo-<account-id>/raw/sales/"}]}'
