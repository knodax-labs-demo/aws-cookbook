aws ecr create-repository \
--repository-name webapp-repo \
--image-scanning-configuration scanOnPush=true \
--region us-east-1
