aws ecr create-repository --repository-name webapp-repo
aws ecr get-login-password --region <region> | \
docker login --username AWS --password-stdin <account-id>.dkr.ecr.<region>.amazonaws.com
docker build -t webapp-repo -f Dockerfile .
docker tag webapp-repo:latest <account-id>.dkr.ecr.<region>.amazonaws.com/webapp-repo:latest
docker push <account-id>.dkr.ecr.<region>.amazonaws.com/webapp-repo:latest
