aws events put-rule \
  --name CodePipeline-State-Changes \
  --event-pattern '{
    "source": ["aws.codepipeline"],
    "detail-type": ["CodePipeline Pipeline Execution State Change","CodePipeline Action Execution State Change"]
  }'
