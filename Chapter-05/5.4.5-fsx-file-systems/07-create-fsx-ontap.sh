aws fsx create-file-system \
  --file-system-type ONTAP \
  --storage-capacity 1024 \
  --subnet-ids "$SUBNET_ID_1" \
  --security-group-ids "$SECURITY_GROUP_ID" \
  --ontap-configuration DeploymentType=SINGLE_AZ_1,ThroughputCapacity=128,PreferredSubnetId="$SUBNET_ID",FsxAdminPassword='YourStrongPassword123!'
