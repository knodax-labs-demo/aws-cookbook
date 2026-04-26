aws codepipeline delete-pipeline --name LambdaAppPipeline
aws codebuild delete-project --name LambdaAppBuild
aws cloudformation delete-stack --stack-name LambdaAppStack
aws codecommit delete-repository --repository-name LambdaAppRepo
aws s3 rb s3://$ARTIFACT_BUCKET --force
aws iam delete-role --role-name LambdaExecutionRole
aws iam delete-role --role-name CodeBuildServiceRole
aws iam delete-role --role-name CodePipelineServiceRole
