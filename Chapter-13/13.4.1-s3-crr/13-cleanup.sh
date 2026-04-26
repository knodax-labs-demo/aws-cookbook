aws s3api delete-bucket-replication \
  --bucket $SRC_BUCKET

for BUCKET in $SRC_BUCKET $DEST_BUCKET; do
  aws s3api delete-objects \
    --bucket $BUCKET \
    --delete "$(aws s3api list-object-versions \
      --bucket $BUCKET \
      --query '{Objects: Versions[].{Key:Key,VersionId:VersionId}}' \
      --output json)"

  aws s3api delete-objects \
    --bucket $BUCKET \
    --delete "$(aws s3api list-object-versions \
      --bucket $BUCKET \
      --query '{Objects: DeleteMarkers[].{Key:Key,VersionId:VersionId}}' \
      --output json)"
done

aws s3api delete-bucket --bucket $SRC_BUCKET --region $SRC_REGION
aws s3api delete-bucket --bucket $DEST_BUCKET --region $DEST_REGION

aws iam delete-role-policy \
  --role-name S3ReplicationRole \
  --policy-name S3ReplicationPolicy

aws iam delete-role \
  --role-name S3ReplicationRole
