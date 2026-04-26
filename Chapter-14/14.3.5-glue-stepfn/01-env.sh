export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

export RAW_BUCKET=churn-raw-$ACCOUNT_ID
export CLEAN_BUCKET=churn-clean-$ACCOUNT_ID
export OUTPUT_BUCKET=churn-output-$ACCOUNT_ID
