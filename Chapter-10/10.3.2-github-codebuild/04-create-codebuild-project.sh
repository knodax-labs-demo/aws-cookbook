aws codebuild create-project \
  --name GitHubBuildDemo \
  --source type=GITHUB,location=https://github.com/your-org/your-repo.git \
  --artifacts type=NO_ARTIFACTS \
  --environment type=LINUX_CONTAINER,image=aws/codebuild/standard:7.0,computeType=BUILD_GENERAL1_SMALL \
  --service-role arn:aws:iam::$ACCOUNT_ID:role/CodeBuildServiceRole
