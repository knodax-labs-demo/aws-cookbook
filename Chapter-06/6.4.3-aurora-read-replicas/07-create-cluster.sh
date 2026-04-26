aws rds create-db-cluster \
  --db-cluster-identifier $CLUSTER_ID \
  --engine aurora-mysql \
  --engine-version 8.0.mysql_aurora.3.04.0 \
  --master-username $DB_USER \
  --master-user-password $DB_PASSWORD \
  --database-name $DB_NAME \
  --vpc-security-group-ids $SG_ID \
  --db-subnet-group-name aurora-subnet-group \
  --region $REGION
