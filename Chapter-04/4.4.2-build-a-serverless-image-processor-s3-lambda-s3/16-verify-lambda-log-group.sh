aws logs describe-log-groups \
  --log-group-name-prefix /aws/lambda/$FUNCTION_NAME \
  --region $REGION
