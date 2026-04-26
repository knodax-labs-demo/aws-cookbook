EIP_ALLOC_ID=$(aws ec2 allocate-address \
  --domain vpc \
  --query 'AllocationId' \
  --output text)

echo "EIP_ALLOC_ID=$EIP_ALLOC_ID"
