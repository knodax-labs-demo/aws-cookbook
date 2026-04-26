SCALEIN_ARN=$(aws application-autoscaling put-scaling-policy \
  --region $REGION \
  --service-namespace ecs \
  --resource-id service/$CLUSTER/$SERVICE \
  --scalable-dimension ecs:service:DesiredCount \
  --policy-name backlog-scale-in \
  --policy-type StepScaling \
  --step-scaling-policy-configuration '{
     "AdjustmentType":"ChangeInCapacity",
     "Cooldown":120,
     "MetricAggregationType":"Average",
     "StepAdjustments":[
       {"MetricIntervalUpperBound": 0, "ScalingAdjustment": -1}
     ]
  }' \
  --query 'PolicyARN' --output text)

echo $SCALEIN_ARN
