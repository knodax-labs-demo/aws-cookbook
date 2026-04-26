aws cloudformation deploy \
--template-file dr-test-infra.yaml \
--stack-name dr-test \
--capabilities CAPABILITY_NAMED_IAM \
--parameter-overrides \
HostedZoneId=Z123456ABCDEFG \
RecordName=app.example.com. \
PrimaryValue=203.0.113.10 \
SecondaryValue=198.51.100.20 \
VerificationUrl=https://app.example.com/health \
TTL=60
