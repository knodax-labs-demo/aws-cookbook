sed -i '' "s|REPLACE_WITH_ROLE_ARN|$ROLE_ARN|" iot-rule.json

aws iot create-topic-rule \
  --rule-name IoTToKinesisRule \
  --topic-rule-payload file://iot-rule.json
