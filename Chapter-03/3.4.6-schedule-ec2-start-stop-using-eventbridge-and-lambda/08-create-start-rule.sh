aws events put-rule \
  --name EC2StartRule \
  --schedule-expression "cron(0 13 ? * MON-FRI *)"
