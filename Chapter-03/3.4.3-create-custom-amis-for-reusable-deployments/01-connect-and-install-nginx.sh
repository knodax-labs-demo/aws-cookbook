ssh -i <key-pair-name>.pem ec2-user@<public-ip>
sudo yum install -y nginx
echo "Hello from Custom AMI" | sudo tee /usr/share/nginx/html/index.html
