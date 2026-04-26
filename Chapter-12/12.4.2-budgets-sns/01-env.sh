export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

export TOPIC_NAME=BudgetAlerts
export BUDGET_NAME=MonthlyCostBudget
export EMAIL=your-email@example.com
