aws rds create-db-subnet-group \
  --db-subnet-group-name $SUBNET_GROUP_NAME \
  --db-subnet-group-description "RDS subnet group" \
  --subnet-ids $SUBNET_IDS
