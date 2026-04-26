aws rds describe-db-instances \
  --db-instance-identifier prod-db \
  --query 'DBInstances[0].DBInstanceStatus'
