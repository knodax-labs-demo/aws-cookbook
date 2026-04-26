cat > env.sh <<'EOF'
export AWS_REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export BUCKET_NAME=my-static-website-$ACCOUNT_ID
export SITE_DIR=./website
EOF
