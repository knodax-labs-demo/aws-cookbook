aws events put-targets \
  --rule $RULE_NAME \
  --targets file://targets.json \
  --region $REGION
