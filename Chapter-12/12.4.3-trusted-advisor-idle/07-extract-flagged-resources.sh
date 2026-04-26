aws support describe-trusted-advisor-check-result \
  --check-id $CHECK_EC2_IDLE \
  --language en \
  --region $REGION \
| jq '.result.flaggedResources'
