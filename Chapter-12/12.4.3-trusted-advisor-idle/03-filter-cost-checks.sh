aws support describe-trusted-advisor-checks \
  --language en \
  --region $REGION \
| jq -r '.checks[] | select(.category=="cost_optimizing") | "\(.id) \(.name)"'
