aws codebuild create-project \
  --name LambdaAppBuild \
  --source type=CODECOMMIT,location=https://git-codecommit.$REGION.amazonaws.com/v1/repos/LambdaAppRepo \
  --artifacts type=S3,location=$ARTIFACT_BUCKET \
  --environment type=LINUX_CONTAINER,image=aws/codebuild/standard:7.0,computeType=BUILD_GENERAL1_SMALL \
  --service-role arn:aws:iam::$ACCOUNT_ID:role/CodeBuildServiceRole
