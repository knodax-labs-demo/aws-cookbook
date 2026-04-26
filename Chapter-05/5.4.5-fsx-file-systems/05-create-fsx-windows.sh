aws fsx create-file-system \
  --file-system-type WINDOWS \
  --storage-capacity 32 \
  --subnet-ids "$SUBNET_ID_1" \
  --security-group-ids "$SECURITY_GROUP_ID" \
  --windows-configuration DeploymentType=SINGLE_AZ_1,ThroughputCapacity=8,ActiveDirectoryId="$DIRECTORY_ID"
