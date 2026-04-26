aws dynamodb update-item \
  --table-name $TABLE_NAME \
  --key '{"UserID":{"S":"U1001"}}' \
  --update-expression "SET Profile.Hobbies = :hobbies" \
  --expression-attribute-values '{
    ":hobbies": {"L":[{"S":"Reading"},{"S":"Traveling"}]}
  }' \
  --region $REGION
