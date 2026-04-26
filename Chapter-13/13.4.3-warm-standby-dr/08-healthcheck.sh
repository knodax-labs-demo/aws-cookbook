export HEALTH_CHECK_ID=$(aws route53 create-health-check \
  --caller-reference $(date +%s) \
  --health-check-config Type=HTTP,ResourcePath=/,FullyQualifiedDomainName=example.com \
  --query "HealthCheck.Id" \
  --output text)
