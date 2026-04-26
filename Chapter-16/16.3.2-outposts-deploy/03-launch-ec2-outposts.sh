aws ec2 run-instances \
  --image-id ami-0abcdef1234567890 \
  --instance-type m5.large \
  --subnet-id subnet-outposts123 \
  --key-name mykeypair \
  --placement "Tenancy=default"
