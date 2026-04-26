aws lambda add-permission \
  --function-name HelloAPI \
  --statement-id apigateway-invoke \
  --action lambda:InvokeFunction \
  --principal apigateway.amazonaws.com \
  --source-arn arn:aws:execute-api:<region>:<account-id>:<api-id>/*/GET/hello
