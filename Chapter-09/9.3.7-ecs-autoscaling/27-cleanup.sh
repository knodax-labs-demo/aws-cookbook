aws application-autoscaling deregister-scalable-target \
  --region $REGION \
  --service-namespace ecs \
  --resource-id service/$CLUSTER/$SERVICE \
  --scalable-dimension ecs:service:DesiredCount

aws cloudwatch delete-alarms \
  --alarm-names BacklogPerTask-High \
  --region $REGION

aws application-autoscaling delete-scaling-policy \
  --service-namespace ecs \
  --resource-id service/$CLUSTER/$SERVICE \
  --scalable-dimension ecs:service:DesiredCount \
  --policy-name cpu-target-60 \
  --region $REGION
