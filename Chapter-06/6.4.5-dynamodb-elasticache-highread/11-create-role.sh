aws iam create-role \
  --role-name ProductsAppEC2Role \
  --assume-role-policy-document file://ec2-trust.json
