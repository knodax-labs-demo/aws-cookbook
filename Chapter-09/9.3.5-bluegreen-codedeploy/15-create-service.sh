aws ecs create-service \
  --cluster webapp-cluster \
  --service-name webapp-service \
  --task-definition webapp-task \
  --desired-count 1 \
  --launch-type FARGATE \
  --deployment-controller type=CODE_DEPLOY \
  --network-configuration "awsvpcConfiguration={subnets=[<subnet-1>,<subnet-2>],securityGroups=[<sg-id>],assignPublicIp=ENABLED}" \
  --load-balancers targetGroupArn=<blue-target-group-arn>,containerName=app,containerPort=80
