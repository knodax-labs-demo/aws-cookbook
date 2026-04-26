aws elbv2 create-target-group \
  --name WebAppTG \
  --protocol HTTP \
  --port 80 \
  --vpc-id <vpc-id> \
  --target-type instance \
  --health-check-protocol HTTP \
  --health-check-path / \
  --health-check-port traffic-port
