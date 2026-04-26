CREATE EXTERNAL TABLE IF NOT EXISTS cur_db.cost_usage (
  identity_line_item_id string,
  bill_payer_account_id string,
  line_item_usage_account_id string,
  line_item_usage_start_date timestamp,
  line_item_usage_end_date timestamp,
  line_item_product_code string,
  line_item_usage_type string,
  line_item_operation string,
  line_item_unblended_cost double
)
STORED AS PARQUET
LOCATION 's3://$CUR_BUCKET/cur-data/';
