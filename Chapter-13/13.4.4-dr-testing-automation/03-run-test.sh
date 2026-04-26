AUTOMATION_ROLE_ARN=$(aws cloudformation describe-stacks \
  --stack-name dr-test \
  --query "Stacks[0].Outputs[?OutputKey=='AutomationRoleArn'].OutputValue" \
  --output text)

aws ssm start-automation-execution \
  --document-name DR-Failover-Test \
  --parameters \
    AutomationAssumeRole="$AUTOMATION_ROLE_ARN",\
HostedZoneId=Z123456ABCDEFG,\
RecordName=app.example.com.,\
PrimaryValue=203.0.113.10,\
SecondaryValue=198.51.100.20,\
VerificationUrl=https://app.example.com/health,\
TTL=60
