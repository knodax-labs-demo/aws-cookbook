aws events put-targets \
  --rule EC2SelfHealRule \
  --targets "Id"="t1","Arn"="arn:aws:lambda:us-east-1:<ACCOUNT_ID>:function:EC2SelfHeal"
