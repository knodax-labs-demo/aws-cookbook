aws dynamodb get-item \
  --table-name $TABLE_NAME \
  --key '{"UserID":{"S":"U1001"}}' \
  --projection-expression "Profile.Preferences.#lang" \
  --expression-attribute-names '{"#lang":"Language"}' \
  --region $REGION
