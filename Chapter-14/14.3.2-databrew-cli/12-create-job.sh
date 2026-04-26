aws databrew create-recipe-job \
  --name $JOB_NAME \
  --dataset-name $DATASET_NAME \
  --recipe-reference Name=$RECIPE_NAME,RecipeVersion=$RECIPE_VERSION \
  --role-arn $ROLE_ARN \
  --outputs "[{\"Location\":{\"Bucket\":\"$OUTPUT_BUCKET\",\"Key\":\"output/\"},\"Format\":\"CSV\",\"Overwrite\":true}]" \
  --region $REGION
