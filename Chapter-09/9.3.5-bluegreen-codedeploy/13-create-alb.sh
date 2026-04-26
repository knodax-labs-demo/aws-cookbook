aws elbv2 create-load-balancer \
  --name webapp-alb \
  --subnets <subnet-1> <subnet-2> \
  --security-groups <sg-id>
