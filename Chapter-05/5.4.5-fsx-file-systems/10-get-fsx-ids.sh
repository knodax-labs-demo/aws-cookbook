aws fsx describe-file-systems \
  --query "FileSystems[*].FileSystemId" \
  --output text
