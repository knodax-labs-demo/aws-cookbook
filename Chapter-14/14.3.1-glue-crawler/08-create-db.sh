DB_NAME=knodax_glue_db

aws glue create-database \
  --database-input Name=$DB_NAME
