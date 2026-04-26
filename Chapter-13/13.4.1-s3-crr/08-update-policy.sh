sed -i '' "s/REPLACE_SRC_BUCKET/$SRC_BUCKET/g" replication-policy.json
sed -i '' "s/REPLACE_DEST_BUCKET/$DEST_BUCKET/g" replication-policy.json

aws iam put-role-policy \
  --role-name S3ReplicationRole \
  --policy-name S3ReplicationPolicy \
  --policy-document file://replication-policy.json
