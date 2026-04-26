aws route53 change-resource-record-sets \
  --hosted-zone-id ZONE_ID \
  --change-batch file://failover-record.json
