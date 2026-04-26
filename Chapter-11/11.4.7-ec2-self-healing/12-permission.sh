aws lambda add-permission \
  --function-name EC2SelfHeal \
  --statement-id evb-invoke \
  --action lambda:InvokeFunction \
  --principal events.amazonaws.com
