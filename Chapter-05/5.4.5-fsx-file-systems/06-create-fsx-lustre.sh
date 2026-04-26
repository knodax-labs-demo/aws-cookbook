aws fsx create-file-system \
  --file-system-type LUSTRE \
  --storage-capacity 1200 \
  --subnet-ids "$SUBNET_ID_1" \
  --lustre-configuration DeploymentType=SCRATCH_1
