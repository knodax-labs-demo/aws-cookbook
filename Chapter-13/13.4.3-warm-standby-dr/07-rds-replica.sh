aws rds create-db-instance-read-replica \
  --db-instance-identifier ${DB_ID}-replica \
  --source-db-instance-identifier arn:aws:rds:$PRIMARY_REGION:$ACCOUNT_ID:db:$DB_ID \
  --region $DR_REGION
