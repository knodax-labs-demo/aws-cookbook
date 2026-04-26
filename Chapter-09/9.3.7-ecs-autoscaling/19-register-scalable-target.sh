aws application-autoscaling register-scalable-target \
  --region $REGION \
  --service-namespace ecs \
  --resource-id service/$CLUSTER/$SERVICE \
  --scalable-dimension ecs:service:DesiredCount \
  --min-capacity 1 \
  --max-capacity 10
