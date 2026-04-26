aws dynamodb update-item \
  --table-name $TABLE_NAME \
  --key '{"UserID":{"S":"U1001"}}' \
  --update-expression "SET Profile.Preferences.#lang = :lang" \
  --expression-attribute-names '{"#lang":"Language"}' \
  --expression-attribute-values '{":lang":{"S":"fr"}}' \
  --region $REGION
