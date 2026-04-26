export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

export FUNCTION_NAME=DailyCostReportFunction
export ROLE_NAME=DailyCostReportLambdaRole
export RULE_NAME=DailyCostReportRule

export SENDER_EMAIL=your-verified-sender@example.com
export RECIPIENT_EMAIL=your-verified-recipient@example.com
