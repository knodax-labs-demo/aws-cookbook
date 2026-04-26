aws dynamodb query \
  --table-name ImageMetadata \
  --key-condition-expression "image_key = :k" \
  --expression-attribute-values '{":k":{"S":"lake-scene.png"}}'
