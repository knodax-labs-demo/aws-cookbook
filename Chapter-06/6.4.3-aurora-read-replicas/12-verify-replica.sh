aws rds describe-db-instances \
  --filters "Name=db-cluster-id,Values=$CLUSTER_ID" \
  --query "DBInstances[*].[DBInstanceIdentifier,DBInstanceRole,DBInstanceStatus]" \
  --output table
