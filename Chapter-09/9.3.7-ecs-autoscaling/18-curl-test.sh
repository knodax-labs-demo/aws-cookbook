curl http://$(aws ec2 describe-network-interfaces \
  --network-interface-ids $(aws ecs describe-tasks \
  --cluster $CLUSTER \
  --tasks $(aws ecs list-tasks --cluster $CLUSTER --query "taskArns[0]" --output text) \
  --query "tasks[0].attachments[0].details[?name=='networkInterfaceId'].value" \
  --output text) \
  --query "NetworkInterfaces[0].Association.PublicIp" \
  --output text)
