REGION=us-east-1
CLUSTER=prod-cluster
SERVICE=web-api
TASK_FAMILY=web-task
REPO_NAME=apache-python-app
ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
IMAGE_URI=$ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO_NAME:latest
