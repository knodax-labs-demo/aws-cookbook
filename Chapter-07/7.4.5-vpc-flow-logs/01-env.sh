REGION=us-east-1
LOG_GROUP=VPCFlowLogsGroup
ROLE_NAME=VPCFlowLogsRole
POLICY_NAME=VPCFlowLogsPolicy

VPC_ID=$(aws ec2 describe-vpcs \
  --query "Vpcs[0].VpcId" \
  --output text \
  --region $REGION)

ACCOUNT_ID=$(aws sts get-caller-identity \
  --query Account \
  --output text)
