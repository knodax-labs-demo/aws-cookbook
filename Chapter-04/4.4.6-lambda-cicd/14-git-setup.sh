git init
git checkout -b main
git remote add origin https://git-codecommit.us-east-1.amazonaws.com/v1/repos/lambda-api-repo
git add app.py buildspec.yml tests/
git commit -m "Initial Lambda function with tests and buildspec"
git push -u origin main