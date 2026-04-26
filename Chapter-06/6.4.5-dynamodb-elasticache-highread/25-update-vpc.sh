aws lambda update-function-configuration \
  --function-name ddb-cache-invalidator \
  --vpc-config SubnetIds=subnet-xxx,subnet-yyy,subnet-zzz,SecurityGroupIds=sg-APPID
