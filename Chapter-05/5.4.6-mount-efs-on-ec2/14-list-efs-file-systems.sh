aws efs describe-file-systems \
  --query 'FileSystems[].FileSystemId' \
  --output text
