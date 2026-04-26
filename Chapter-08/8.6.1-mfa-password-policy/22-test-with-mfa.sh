aws iam attach-user-policy   --user-name $USER_NAME   --policy-arn arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess

aws ec2 describe-instances --region $REGION
