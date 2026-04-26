aws budgets create-budget \
  --account-id $ACCOUNT_ID \
  --budget file://budget.json \
  --region us-east-1
