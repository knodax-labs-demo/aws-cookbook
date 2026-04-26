aws ec2 create-launch-template \
  --launch-template-name WebServerLT \
  --version-description "v1" \
  --launch-template-data '{
    "ImageId":"<ami-id>",
    "InstanceType":"t3.micro",
    "KeyName":"<key-pair-name>",
    "SecurityGroupIds":["<security-group-id>"]
  }'
