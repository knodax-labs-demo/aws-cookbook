CREATE OR REPLACE VIEW cur_db.v_team_service_mtd AS
SELECT
  coalesce(resource_tags_user_team, resource_tags_team, 'UNASSIGNED') AS team,
  product_product_name AS service,
  bill_payer_account_id AS payer_account,
  line_item_usage_account_id AS linked_account,
  SUM(CAST(line_item_unblended_cost AS double)) AS cost_usd
FROM cur_db.orgdailycur
WHERE year = year(current_date)
  AND month = month(current_date)
GROUP BY 1,2,3,4;
