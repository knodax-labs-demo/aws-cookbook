MOUNT_TARGETS=$(aws efs describe-mount-targets \
  --file-system-id $EFS_ID \
  --query 'MountTargets[].MountTargetId' \
  --output text)

for mt in $MOUNT_TARGETS; do
  aws efs delete-mount-target --mount-target-id $mt
done
