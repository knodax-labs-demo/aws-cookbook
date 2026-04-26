aws rds create-db-instance \
  --db-instance-identifier $WRITER_ID \
  --db-cluster-identifier $CLUSTER_ID \
  --engine aurora-mysql \
  --db-instance-class db.t3.medium \
  --region $REGION
