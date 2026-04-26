RECORDER_NAME=$(aws configservice describe-configuration-recorders --query "ConfigurationRecorders[0].name" --output text)
CHANNEL_NAME=$(aws configservice describe-delivery-channels --query "DeliveryChannels[0].name" --output text)

if [ "$RECORDER_NAME" != "None" ] && [ -n "$RECORDER_NAME" ]; then
  echo "Stopping configuration recorder: $RECORDER_NAME"
  aws configservice stop-configuration-recorder --configuration-recorder-name "$RECORDER_NAME"
else
  echo "No configuration recorder found"
fi

if [ "$CHANNEL_NAME" != "None" ] && [ -n "$CHANNEL_NAME" ]; then
  echo "Deleting delivery channel: $CHANNEL_NAME"
  aws configservice delete-delivery-channel --delivery-channel-name "$CHANNEL_NAME"
else
  echo "No delivery channel found"
fi

if [ "$RECORDER_NAME" != "None" ] && [ -n "$RECORDER_NAME" ]; then
  echo "Deleting configuration recorder: $RECORDER_NAME"
  aws configservice delete-configuration-recorder --configuration-recorder-name "$RECORDER_NAME"
fi

echo "Done"
