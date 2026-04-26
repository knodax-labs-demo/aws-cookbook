aws elbv2 create-target-group \
  --name webapp-blue \
  --protocol HTTP --port 80 \
  --vpc-id <vpc-id> --target-type ip

aws elbv2 create-target-group \
  --name webapp-green \
  --protocol HTTP --port 80 \
  --vpc-id <vpc-id> --target-type ip
