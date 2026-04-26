POLICY_ID=$(aws organizations create-policy \
  --name "StandardTagPolicy" \
  --description "Enforce standard tags across accounts" \
  --type TAG_POLICY \
  --content file://tag-policy.json \
  --query 'Policy.PolicySummary.Id' \
  --output text)

echo $POLICY_ID
