aws cloudformation create-stack \
  --stack-name AccountHardening \
  --template-body file://account-hardening.yml \
  --capabilities CAPABILITY_NAMED_IAM
