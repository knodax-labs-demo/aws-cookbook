#!/bin/bash

# General
REGION=us-east-1
DB_INSTANCE_ID=prod-db
DB_NAME=appdb
DB_USER=admin
DB_PASSWORD=MySecurePass123

# Networking
VPC_ID=$(aws ec2 describe-vpcs \
  --query "Vpcs[0].VpcId" \
  --output text)

SG_NAME=rds-sg
SUBNET_GROUP_NAME=rds-subnet-group
