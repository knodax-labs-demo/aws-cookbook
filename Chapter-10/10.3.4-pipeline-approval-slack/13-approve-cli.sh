aws codepipeline put-approval-result \
  --pipeline-name StaticSitePipeline \
  --stage-name Approval \
  --action-name ManualApprovalBeforeProd \
  --result summary="Looks good",status=Approved \
  --token "<token from approval action details>"
