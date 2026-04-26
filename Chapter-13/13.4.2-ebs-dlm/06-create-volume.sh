AZ=$(aws ec2 describe-availability-zones \
  --region $REGION \
  --query "AvailabilityZones[0].ZoneName" \
  --output text)

echo $AZ

VOLUME_ID=$(aws ec2 create-volume \
  --region $REGION \
  --availability-zone $AZ \
  --size 1 \
  --volume-type gp3 \
  --tag-specifications 'ResourceType=volume,Tags=[{Key=Name,Value=DLM-Test-Volume},{Key=Backup,Value=True}]' \
  --query VolumeId \
  --output text)

echo $VOLUME_ID

aws ec2 wait volume-available \
  --region $REGION \
  --volume-ids $VOLUME_ID

aws ec2 describe-volumes --query "Volumes[].VolumeId" --output text
