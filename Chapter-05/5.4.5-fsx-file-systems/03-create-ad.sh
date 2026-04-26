aws ds create-microsoft-ad \
  --name corp.example.com \
  --password 'TempPassword123!' \
  --edition Standard \
  --vpc-settings VpcId=$VPC_ID,SubnetIds=$SUBNET_ID_1,$SUBNET_ID_2
