SG_ID=$(aws ec2 create-security-group   --group-name aurora-sg   --description "Aurora Serverless SG"   --query 'GroupId'   --output text)

echo "SG_ID=$SG_ID"
