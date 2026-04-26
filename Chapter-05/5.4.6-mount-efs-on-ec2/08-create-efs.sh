EFS_ID=$(aws efs create-file-system \
  --creation-token $EFS_NAME \
  --region $REGION \
  --query 'FileSystemId' \
  --output text)

echo "EFS_ID=$EFS_ID"
