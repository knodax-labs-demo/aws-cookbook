aws ec2 describe-snapshots \
  --owner-ids self \
  --query "Snapshots[*].[SnapshotId,StartTime,VolumeId]" \
  --output table
