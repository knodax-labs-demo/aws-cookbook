aws fsx create-file-system \
--file-system-type OPENZFS \
--storage-capacity 64 \
--subnet-ids "$SUBNET_ID_1" \
--open-zfs-configuration DeploymentType=SINGLE_AZ_1,ThroughputCapacity=64
