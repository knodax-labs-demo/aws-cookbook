SELECT 
  line_item_product_code,
  SUM(line_item_unblended_cost) AS total_cost
FROM cur_db.cost_usage
GROUP BY line_item_product_code
ORDER BY total_cost DESC;
