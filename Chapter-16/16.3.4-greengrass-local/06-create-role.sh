aws iam create-role \
  --role-name GreengrassV2TokenExchangeRole \
  --assume-role-policy-document file://<(cat <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {"Service": "credentials.iot.amazonaws.com"},
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
)

aws iam attach-role-policy \
  --role-name GreengrassV2TokenExchangeRole \
  --policy-arn arn:aws:iam::aws:policy/AWSGreengrassFullAccess
