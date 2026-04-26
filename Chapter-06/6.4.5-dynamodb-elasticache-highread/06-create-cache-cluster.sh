aws elasticache create-cache-cluster \
  --cache-cluster-id prod-cache \
  --engine redis \
  --cache-node-type cache.t4g.small \
  --num-cache-nodes 1 \
  --security-group-ids sg-XXXX \
  --cache-subnet-group-name my-subnets
