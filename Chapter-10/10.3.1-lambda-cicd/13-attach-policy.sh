aws iam put-role-policy \
  --role-name CodePipelineServiceRole \
  --policy-name CodePipelineInlinePolicy \
  --policy-document file://codepipeline-role-policy.json
