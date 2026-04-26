aws cloudformation describe-stack-events \
  --stack-name AccountHardening \
  --query "StackEvents[].[Timestamp,LogicalResourceId,ResourceStatus,ResourceStatusReason]" \
  --output table
