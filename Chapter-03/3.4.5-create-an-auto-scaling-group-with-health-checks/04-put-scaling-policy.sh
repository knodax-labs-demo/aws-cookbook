aws autoscaling put-scaling-policy \
  --auto-scaling-group-name WebAppASG \
  --policy-name CPUScaleOut \
  --policy-type TargetTrackingScaling \
  --target-tracking-configuration file://cpu-policy.json
