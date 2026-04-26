aws iot create-policy \
  --policy-name IoTToKinesisPolicy \
  --policy-document file://iot-policy.json

aws iot attach-policy \
  --policy-name IoTToKinesisPolicy \
  --target $CERT_ARN
