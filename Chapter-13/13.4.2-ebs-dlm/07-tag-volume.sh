aws ec2 create-tags \
  --resources $VOLUME_ID \
  --tags Key=Backup,Value=True \
  --region $REGION
