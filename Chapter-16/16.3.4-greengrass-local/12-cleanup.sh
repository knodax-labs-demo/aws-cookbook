aws greengrassv2 list-deployments
aws greengrassv2 cancel-deployment --deployment-id <DEPLOYMENT_ID>

aws greengrassv2 list-components
aws greengrassv2 delete-component --arn <COMPONENT_ARN>

aws iot detach-thing-principal --thing-name $THING_NAME --principal <CERT_ARN>
aws iot update-certificate --certificate-id <CERT_ID> --new-status INACTIVE
aws iot delete-certificate --certificate-id <CERT_ID>
aws iot delete-thing --thing-name $THING_NAME

aws iot delete-policy --policy-name GreengrassIoTPolicy

aws iam detach-role-policy \
  --role-name GreengrassV2TokenExchangeRole \
  --policy-arn arn:aws:iam::aws:policy/AWSGreengrassFullAccess

aws iam delete-role --role-name GreengrassV2TokenExchangeRole
