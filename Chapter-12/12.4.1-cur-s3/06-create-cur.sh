aws cur put-report-definition \
  --region us-east-1 \
  --report-definition '{
    "ReportName": "'"$REPORT_NAME"'",
    "TimeUnit": "DAILY",
    "Format": "Parquet",
    "Compression": "Parquet",
    "AdditionalSchemaElements": ["RESOURCES"],
    "S3Bucket": "'"$CUR_BUCKET"'",
    "S3Prefix": "cur-data",
    "S3Region": "us-east-1",
    "ReportVersioning": "OVERWRITE_REPORT",
    "RefreshClosedReports": true
  }'
