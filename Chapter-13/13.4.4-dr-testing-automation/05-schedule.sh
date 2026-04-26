EVENTBRIDGE_ROLE_ARN=$(aws cloudformation describe-stacks \
  --stack-name dr-test \
  --query "Stacks[0].Outputs[?OutputKey=='EventBridgeInvokeRoleArn'].OutputValue" \
  --output text)

ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION=$(aws configure get region)

aws events put-rule \
  --name MonthlyDRTest \
  --schedule-expression "cron(0 7 1 * ? *)"

aws events put-targets \
  --rule MonthlyDRTest \
  --targets "[{ \"Id\": \"DRTest\", \"Arn\": \"arn:aws:ssm:${REGION}:${ACCOUNT_ID}:automation-definition/DR-Failover-Test\", \"RoleArn\": \"${EVENTBRIDGE_ROLE_ARN}\", \"Input\": \"{\\\"AutomationAssumeRole\\\":[\\\"${AUTOMATION_ROLE_ARN}\\\"],\\\"HostedZoneId\\\":[\\\"Z123456ABCDEFG\\\"],\\\"RecordName\\\":[\\\"app.example.com.\\\"],\\\"PrimaryValue\\\":[\\\"203.0.113.10\\\"],\\\"SecondaryValue\\\":[\\\"198.51.100.20\\\"],\\\"VerificationUrl\\\":[\\\"https://app.example.com/health\\\"],\\\"TTL\\\":[\\\"60\\\"]}\" }]"
