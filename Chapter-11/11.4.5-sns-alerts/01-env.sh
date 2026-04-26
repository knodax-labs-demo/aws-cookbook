REGION=us-east-1
ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
TOPIC_NAME=OpsAlerts
EMAIL=you@example.com
INSTANCE_ID=i-xxxxxxxxxxxxxxxxx
