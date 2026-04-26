DELETE_MARKERS=$(aws s3api list-object-versions \
  --bucket $BUCKET_NAME \
  --output json \
  --query 'DeleteMarkers[].{Key:Key,VersionId:VersionId}')
if [ "$DELETE_MARKERS" != "null" ] && [ "$DELETE_MARKERS" != "[]" ]; then
  aws s3api delete-objects \
    --bucket $BUCKET_NAME \
    --delete "{\"Objects\": $DELETE_MARKERS}"
Fi
