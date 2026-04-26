aws iot-data publish \
  --topic "factory/sensors/temp" \
  --payload '{"temperature": 25, "device": "sensor-001"}' \
  --region $REGION
