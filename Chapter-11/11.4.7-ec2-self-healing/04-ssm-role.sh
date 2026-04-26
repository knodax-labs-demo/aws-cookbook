aws iam create-role \
  --role-name SSMRole \
  --assume-role-policy-document file://trust-policy.json

aws iam attach-role-policy \
  --role-name SSMRole \
  --policy-arn arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore

aws iam create-instance-profile \
  --instance-profile-name SSMInstanceProfile

aws iam add-role-to-instance-profile \
  --instance-profile-name SSMInstanceProfile \
  --role-name SSMRole

sleep 10
