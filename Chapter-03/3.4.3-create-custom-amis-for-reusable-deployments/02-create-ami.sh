aws ec2 create-image \
  --instance-id <instance-id> \
  --name "CustomWebServerAMI" \
  --description "Nginx preinstalled image" \
  --no-reboot
