SCALEOUT_ARN=$(aws application-autoscaling put-scaling-policy \
  --region $REGION \
  --service-namespace ecs \
  --resource-id service/$CLUSTER/$SERVICE \
  --scalable-dimension ecs:service:DesiredCount \
  --policy-name backlog-scale-out \
  --policy-type StepScaling \
  --step-scaling-policy-configuration '{
     "AdjustmentType":"ChangeInCapacity",
     "Cooldown":60,
     "MetricAggregationType":"Average",
     "StepAdjustments":[
       {"MetricIntervalLowerBound": 0, "MetricIntervalUpperBound": 50, "ScalingAdjustment": 1},
       {"MetricIntervalLowerBound": 50, "ScalingAdjustment": 2}
     ]
  }' \
  --query 'PolicyARN' --output text)

echo $SCALEOUT_ARN
