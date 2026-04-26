aws iot delete-topic-rule --rule-name IoTToKinesisRule

aws iot detach-thing-principal \
  --thing-name $THING_NAME \
  --principal $CERT_ARN

aws iot update-certificate \
  --certificate-id $(basename $CERT_ARN) \
  --new-status INACTIVE

aws iot delete-certificate \
  --certificate-id $(basename $CERT_ARN)

aws iot delete-thing --thing-name $THING_NAME
aws iot delete-policy --policy-name IoTToKinesisPolicy

aws kinesis delete-stream \
  --stream-name $STREAM_NAME \
  --region $REGION

aws iam detach-role-policy \
  --role-name IoTRuleKinesisRole \
  --policy-arn arn:aws:iam::aws:policy/AmazonKinesisFullAccess

aws iam delete-role --role-name IoTRuleKinesisRole
