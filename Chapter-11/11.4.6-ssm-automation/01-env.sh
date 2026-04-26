REGION=us-east-1
ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

RUNBOOK_NAME=RestartEC2Runbook-$ACCOUNT_ID
AUTOMATION_ROLE_NAME=SSMAutomationRole
