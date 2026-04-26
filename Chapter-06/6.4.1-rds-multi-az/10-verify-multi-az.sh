aws rds describe-db-instances \
  --db-instance-identifier $DB_INSTANCE_ID \
  --query 'DBInstances[*].[DBInstanceIdentifier,MultiAZ,DBInstanceStatus]' \
  --output table
