MAPPING_ID=$(aws lambda list-event-source-mappings \
  --function-name ProcessOrderStream \
  --query "EventSourceMappings[0].UUID" \
  --output text)

echo $MAPPING_ID
