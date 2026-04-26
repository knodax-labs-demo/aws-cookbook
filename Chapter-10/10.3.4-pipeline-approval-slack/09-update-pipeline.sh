aws codepipeline get-pipeline --name StaticSitePipeline > pipeline.json

aws codepipeline update-pipeline --cli-input-json file://pipeline.json
