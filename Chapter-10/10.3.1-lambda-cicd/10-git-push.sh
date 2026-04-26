git init

REPO_URL=$(aws codecommit get-repository \
  --repository-name LambdaAppRepo \
  --query 'repositoryMetadata.cloneUrlHttp' \
  --output text)

git remote add origin $REPO_URL

git add .
git commit -m "Initial commit"

git push -u origin main
