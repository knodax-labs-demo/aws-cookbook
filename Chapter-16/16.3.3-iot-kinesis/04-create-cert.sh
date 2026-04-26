aws iot create-keys-and-certificate \
  --set-as-active \
  --query '{certArn:certificateArn, certId:certificateId}' \
  --output json > cert.json

export CERT_ARN=$(jq -r '.certArn' cert.json)
