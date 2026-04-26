ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION=us-east-1
POLICY_NAME="EBS-Daily-Snapshot-Policy"
ROLE_NAME="AWSDataLifecycleManagerDefaultRole"
