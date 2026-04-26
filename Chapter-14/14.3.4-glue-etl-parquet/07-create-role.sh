aws iam create-role \
  --role-name $ROLE_NAME \
  --assume-role-policy-document file://glue-trust-policy.json

aws iam attach-role-policy \
  --role-name $ROLE_NAME \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole

aws iam attach-role-policy \
  --role-name $ROLE_NAME \
  --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess

export ROLE_ARN=$(aws iam get-role \
  --role-name $ROLE_NAME \
  --query Role.Arn \
  --output text)
