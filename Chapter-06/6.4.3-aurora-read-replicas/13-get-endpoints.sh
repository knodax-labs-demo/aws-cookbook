aws rds describe-db-clusters \
  --db-cluster-identifier $CLUSTER_ID \
  --query "DBClusters[0].[Endpoint,ReaderEndpoint]" \
  --output table
