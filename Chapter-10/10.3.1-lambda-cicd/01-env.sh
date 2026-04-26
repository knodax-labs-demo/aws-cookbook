REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export ARTIFACT_BUCKET=lambda-pipeline-artifacts-$ACCOUNT_ID
