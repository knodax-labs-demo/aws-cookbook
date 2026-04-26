cat > dataset-input.json <<EOF
{
  "S3InputDefinition": {
    "Bucket": "$SOURCE_BUCKET",
    "Key": "input/baby-names.csv"
  }
}
EOF
aws databrew create-dataset \
  --name $DATASET_NAME \
  --input file://dataset-input.json \
  --format CSV \
  --region $REGION
