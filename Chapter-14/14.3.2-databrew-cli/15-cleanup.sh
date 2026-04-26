aws databrew delete-job \
  --name $JOB_NAME \
  --region $REGION

aws databrew delete-recipe-version \
  --name $RECIPE_NAME \
  --recipe-version LATEST_WORKING \
  --region $REGION

aws databrew delete-dataset \
  --name $DATASET_NAME \
  --region $REGION

aws s3 rm s3://$SOURCE_BUCKET --recursive
aws s3 rm s3://$OUTPUT_BUCKET --recursive

aws s3 rb s3://$SOURCE_BUCKET
aws s3 rb s3://$OUTPUT_BUCKET

aws iam delete-role-policy \
  --role-name $ROLE_NAME \
  --policy-name DataBrewS3AccessPolicy

aws iam delete-role \
  --role-name $ROLE_NAME
