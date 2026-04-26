aws athena start-query-execution \
  --query-string "CREATE TABLE datalake_sales.sales_summary
WITH (
  format = 'PARQUET',
  external_location = 's3://acme-data-lake-demo-<account-id>/reports/sales_summary/'
) AS
SELECT year, month, region, SUM(qty * price) AS revenue, COUNT(*) AS orders
FROM datalake_sales.sales_curated
GROUP BY year, month, region;" \
  --work-group primary \
  --result-configuration OutputLocation=s3://acme-athena-results-<account-id>/
