aws events put-rule \
  --name EC2StopRule \
  --schedule-expression "cron(0 0 ? * MON-FRI *)"
