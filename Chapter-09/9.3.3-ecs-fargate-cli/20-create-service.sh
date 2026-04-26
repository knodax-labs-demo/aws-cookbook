SUBNET_LIST=$(echo $SUBNETS | tr ' ' ',')
aws ecs create-service \
  --cluster WebAppCluster \
  --service-name WebAppService \
  --task-definition webapp-task \
  --desired-count 1 \
  --launch-type FARGATE \
  --platform-version LATEST \
  --network-configuration "awsvpcConfiguration={subnets=[$SUBNET_LIST],securityGroups=[$SG_ID],assignPublicIp=ENABLED}"
