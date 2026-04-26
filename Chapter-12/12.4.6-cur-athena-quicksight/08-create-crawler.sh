aws glue create-crawler \
  --name cur-crawler \
  --role arn:aws:iam::<account-id>:role/AWSGlueServiceRole \
  --database-name cur_db \
  --targets '{"S3Targets":[{"Path":"s3://org-cur-prod-<account-id>/cur/"}]}'
