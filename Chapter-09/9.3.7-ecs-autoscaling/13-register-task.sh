aws ecs register-task-definition \
  --family $TASK_FAMILY \
  --network-mode awsvpc \
  --requires-compatibilities FARGATE \
  --cpu "256" \
  --memory "512" \
  --execution-role-arn arn:aws:iam::$ACCOUNT_ID:role/ecsTaskExecutionRole \
  --container-definitions "[{ \"name\": \"apache-python-app\", \"image\": \"$IMAGE_URI\", \"essential\": true, \"portMappings\": [{ \"containerPort\": 80, \"protocol\": \"tcp\" }] }]" \
  --region $REGION
