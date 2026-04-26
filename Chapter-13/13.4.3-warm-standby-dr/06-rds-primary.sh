export DB_ID=warm-standby-db

aws rds create-db-instance \
  --db-instance-identifier $DB_ID \
  --db-instance-class db.t3.micro \
  --engine mysql \
  --master-username admin \
  --master-user-password Password123! \
  --allocated-storage 20 \
  --region $PRIMARY_REGION
