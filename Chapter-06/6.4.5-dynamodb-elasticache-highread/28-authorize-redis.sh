aws ec2 authorize-security-group-ingress \
  --group-id sg-CACHEID \
  --protocol tcp \
  --port 6379 \
  --source-group sg-LAMBDA
