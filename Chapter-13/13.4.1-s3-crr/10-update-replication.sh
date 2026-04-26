sed -i '' "s/ACCOUNT_ID/$ACCOUNT_ID/g" replication.json
sed -i '' "s/DEST_BUCKET/$DEST_BUCKET/g" replication.json

aws s3api put-bucket-replication \
  --bucket $SRC_BUCKET \
  --replication-configuration file://replication.json
