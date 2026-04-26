sed -i '' "s/REPLACE_BUCKET/$BUCKET_NAME/g" canary-template.yml

aws cloudformation deploy \
  --template-file canary-template.yml \
  --stack-name CanaryDeploymentStack \
  --capabilities CAPABILITY_NAMED_IAM \
  --region $REGION
