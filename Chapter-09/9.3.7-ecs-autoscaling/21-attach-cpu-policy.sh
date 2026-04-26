aws application-autoscaling put-scaling-policy \
  --region $REGION \
  --service-namespace ecs \
  --resource-id service/$CLUSTER/$SERVICE \
  --scalable-dimension ecs:service:DesiredCount \
  --policy-name cpu-target-60 \
  --policy-type TargetTrackingScaling \
  --target-tracking-scaling-policy-configuration file://cpu-target-60.json
