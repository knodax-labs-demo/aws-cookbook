aws rds describe-db-clusters   --db-cluster-identifier $DB_CLUSTER_ID   --query 'DBClusters[0].Status'   --output text
