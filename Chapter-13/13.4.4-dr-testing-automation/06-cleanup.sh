aws cloudformation delete-stack --stack-name dr-test
aws cloudformation wait stack-delete-complete --stack-name dr-test
