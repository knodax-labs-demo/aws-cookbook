aws configservice put-configuration-recorder   --configuration-recorder name=ConfigRecorder,roleARN=arn:aws:iam::$ACCOUNT_ID:role/ConfigServiceRole   --recording-group allSupported=true,includeGlobalResourceTypes=true

aws configservice put-delivery-channel   --delivery-channel name=ConfigDeliveryChannel,s3BucketName=$BUCKET_NAME

aws configservice start-configuration-recorder   --configuration-recorder-name ConfigRecorder
