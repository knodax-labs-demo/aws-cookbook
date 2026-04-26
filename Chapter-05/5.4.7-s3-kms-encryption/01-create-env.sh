cat > env.sh <<EOF
ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION=us-east-1
BUCKET_NAME=secure-data-bucket-$ACCOUNT_ID
EOF
