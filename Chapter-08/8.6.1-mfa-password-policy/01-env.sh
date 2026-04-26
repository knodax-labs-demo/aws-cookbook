export USER_NAME=DevUser
export MFA_DEVICE_NAME=DevUserMFA
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
