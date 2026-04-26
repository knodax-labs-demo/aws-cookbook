aws budgets create-notification \
  --account-id $ACCOUNT_ID \
  --budget-name $BUDGET_NAME \
  --notification file://notification.json \
  --subscribers file://subscribers.json \
  --region us-east-1
