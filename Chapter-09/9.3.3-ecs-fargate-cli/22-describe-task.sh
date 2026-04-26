TASK_ID=$(aws ecs list-tasks \
  --cluster WebAppCluster \
  --query "taskArns[0]" \
  --output text)

aws ecs describe-tasks \
  --cluster WebAppCluster \
  --tasks $TASK_ID
