aws ecs register-task-definition \
  --family webapp-task \
  --network-mode awsvpc \
  --requires-compatibilities FARGATE \
  --cpu "256" \
  --memory "512" \
  --execution-role-arn arn:aws:iam::$ACCOUNT_ID:role/ECSFargateExecutionRole \
  --container-definitions "[{
      \"name\": \"webapp\",
      \"image\": \"$ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/webapp-repo:latest\",
      \"portMappings\": [{\"containerPort\": 80,\"protocol\": \"tcp\"}],
      \"essential\": true,
      \"logConfiguration\": {
        \"logDriver\": \"awslogs\",
        \"options\": {
          \"awslogs-group\": \"/ecs/webapp\",
          \"awslogs-region\": \"$REGION\",
          \"awslogs-stream-prefix\": \"ecs\"
        }
      }
  }]"
