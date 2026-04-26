aws iot create-policy \
  --policy-name GreengrassIoTPolicy \
  --policy-document file://iot-policy.json

aws iot attach-policy \
  --policy-name GreengrassIoTPolicy \
  --target <CERTIFICATE_ARN>

aws iot attach-thing-principal \
  --thing-name $THING_NAME \
  --principal <CERTIFICATE_ARN>
