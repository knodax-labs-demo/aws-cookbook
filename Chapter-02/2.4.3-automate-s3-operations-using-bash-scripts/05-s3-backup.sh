#!/bin/bash

BUCKET="my-aws-cookbook-demo-bucket-<ACCOUNT-ID>"
SOURCE_DIR="/home/ec2-user/backups"
TIMESTAMP=$(date +%F-%H%M)

# Sync backup to S3 with timestamped folder
aws s3 sync "$SOURCE_DIR" "s3://$BUCKET/$TIMESTAMP/" --storage-class STANDARD_IA

# Check if command succeeded
if [ $? -eq 0 ]; then
  echo "Backup completed successfully for $SOURCE_DIR at $TIMESTAMP"
else
  echo "Backup failed for $SOURCE_DIR at $TIMESTAMP"
fi
