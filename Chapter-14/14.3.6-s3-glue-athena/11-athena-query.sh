aws athena start-query-execution \
  --query-string "SELECT region, SUM(qty*price) AS revenue FROM datalake_sales.sales GROUP BY region ORDER BY revenue DESC;" \
  --work-group primary \
  --result-configuration OutputLocation=s3://acme-athena-results-<account-id>/
