aws s3 rb s3://$TEST_BUCKET_NAME --force

aws configservice delete-config-rule --config-rule-name encrypted-volumes
aws configservice delete-config-rule --config-rule-name s3-bucket-public-read-prohibited

aws configservice delete-remediation-configuration   --config-rule-name s3-bucket-public-read-prohibited

aws configservice stop-configuration-recorder   --configuration-recorder-name ConfigRecorder

aws configservice delete-delivery-channel   --delivery-channel-name ConfigDeliveryChannel

aws configservice delete-configuration-recorder   --configuration-recorder-name ConfigRecorder

aws s3 rb s3://$BUCKET_NAME --force

aws iam detach-role-policy   --role-name ConfigServiceRole   --policy-arn arn:aws:iam::aws:policy/service-role/AWS_ConfigRole

aws iam delete-role --role-name ConfigServiceRole

aws iam detach-role-policy   --role-name ConfigRemediationRole   --policy-arn arn:aws:iam::aws:policy/service-role/AmazonSSMAutomationRole

aws iam delete-role --role-name ConfigRemediationRole
