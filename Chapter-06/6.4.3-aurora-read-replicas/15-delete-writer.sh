aws rds delete-db-instance \
  --db-instance-identifier $WRITER_ID \
  --skip-final-snapshot
