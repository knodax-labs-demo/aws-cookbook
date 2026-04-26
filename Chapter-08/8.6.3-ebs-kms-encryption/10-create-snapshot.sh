export VOLUME_ID=<volume-id>
aws ec2 create-snapshot \
  --volume-id $VOLUME_ID \
  --description "Encrypted snapshot" \
  --region $REGION
