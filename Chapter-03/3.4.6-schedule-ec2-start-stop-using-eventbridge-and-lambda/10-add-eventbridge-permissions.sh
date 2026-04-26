aws lambda add-permission \
  --function-name EC2Scheduler \
  --statement-id AllowEventBridgeStart \
  --action lambda:InvokeFunction \
  --principal events.amazonaws.com

aws lambda add-permission \
  --function-name EC2Scheduler \
  --statement-id AllowEventBridgeStop \
  --action lambda:InvokeFunction \
  --principal events.amazonaws.com
