CREATE OR REPLACE VIEW cur_db.v_team_mtd AS
SELECT
  coalesce(resource_tags_user_team, resource_tags_team, 'UNASSIGNED') AS team,
  CAST(date_trunc('day', usage_start_date) AS date) AS usage_day,
  SUM(CAST(line_item_unblended_cost AS double)) AS cost_usd
FROM cur_db.orgdailycur
WHERE year = year(current_date)
  AND month = month(current_date)
GROUP BY 1,2;
