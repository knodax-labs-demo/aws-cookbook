aws iam attach-role-policy \
  --role-name ProductsAppEC2Role \
  --policy-arn arn:aws:iam::<account-id>:policy/ProductsAppDynamoDBPolicy
