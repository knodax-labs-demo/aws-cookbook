sed "s|SCALEOUT_ARN_REPLACE|$SCALEOUT_ARN|" alarm-scale-out.json > out.json
aws cloudwatch put-metric-alarm --region $REGION --cli-input-json file://out.json
