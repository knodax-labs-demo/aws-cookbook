cat > env.sh <<EOF
ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
BUCKET_NAME=secure-lifecycle-bucket-$ACCOUNT_ID
REGION=us-east-1
EOF
