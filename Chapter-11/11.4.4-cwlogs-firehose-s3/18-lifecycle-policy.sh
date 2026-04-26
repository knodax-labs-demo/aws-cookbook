aws s3api put-bucket-lifecycle-configuration \
  --bucket $BUCKET_NAME \
  --lifecycle-configuration '{
    "Rules": [{
      "ID": "ArchiveLogs",
      "Status": "Enabled",
      "Transitions": [{
        "Days": 90,
        "StorageClass": "DEEP_ARCHIVE"
      }]
    }]
  }'
