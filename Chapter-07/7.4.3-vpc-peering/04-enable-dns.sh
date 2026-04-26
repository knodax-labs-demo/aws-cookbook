aws ec2 modify-vpc-attribute --vpc-id $VPC1_ID --enable-dns-support "{\"Value\":true}"
aws ec2 modify-vpc-attribute --vpc-id $VPC1_ID --enable-dns-hostnames "{\"Value\":true}"

aws ec2 modify-vpc-attribute --vpc-id $VPC2_ID --enable-dns-support "{\"Value\":true}"
aws ec2 modify-vpc-attribute --vpc-id $VPC2_ID --enable-dns-hostnames "{\"Value\":true}"
