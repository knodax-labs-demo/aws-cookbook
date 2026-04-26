aws s3 mb s3://$RAW_BUCKET --region $REGION
aws s3 mb s3://$CLEAN_BUCKET --region $REGION
aws s3 mb s3://$OUTPUT_BUCKET --region $REGION
