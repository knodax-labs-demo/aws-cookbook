aws scheduler create-schedule \
  --name $SCHEDULE_NAME \
  --schedule-expression "rate(1 hour)" \
  --flexible-time-window '{"Mode":"OFF"}' \
  --target file://scheduler-target.json \
  --region $REGION

aws scheduler get-schedule \
  --name $SCHEDULE_NAME \
  --region $REGION
