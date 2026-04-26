aws glue get-tables --database-name datalake_sales \
  --query 'TableList[].Name'
