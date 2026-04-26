aws cloudwatch get-metric-statistics \
  --metric-name Errors \
  --namespace AWS/Lambda \
  --dimensions Name=FunctionName,Value=CanaryDemoFunction \
  --start-time $(date -u -v-10M +%FT%TZ) \
  --end-time $(date -u +%FT%TZ) \
  --period 60 \
  --statistics Sum
