POLICY_ID=$(aws dlm get-lifecycle-policies \
  --query "Policies[0].PolicyId" \
  --output text \
  --region $REGION)

aws dlm delete-lifecycle-policy \
  --policy-id $POLICY_ID \
  --region $REGION

aws ec2 delete-tags \
  --resources $VOLUME_ID \
  --tags Key=Backup \
  --region $REGION

SNAPSHOT_IDS=$(aws ec2 describe-snapshots \
  --owner-ids self \
  --query "Snapshots[].SnapshotId" \
  --output text)

for SNAP in $SNAPSHOT_IDS; do
  aws ec2 delete-snapshot --snapshot-id $SNAP
done

aws ec2 delete-volume \
  --volume-id $VOLUME_ID \
  --region $REGION

aws iam detach-role-policy \
  --role-name $ROLE_NAME \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSDataLifecycleManagerServiceRole

aws iam delete-role --role-name $ROLE_NAME
