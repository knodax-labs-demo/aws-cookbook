export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

export CUR_BUCKET=aws-cost-reports-$ACCOUNT_ID
export REPORT_NAME=DailyCostUsageReport
