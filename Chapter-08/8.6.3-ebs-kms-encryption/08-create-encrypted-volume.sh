aws ec2 create-volume \
  --availability-zone ${REGION}a \
  --size 10 \
  --volume-type gp3 \
  --encrypted \
  --kms-key-id $KEY_ALIAS \
  --region $REGION
