cat > app.py <<EOF
def handler(event, context):
    return {
        "statusCode": 200,
        "body": "Hello from Canary Deployment v2"
    }
EOF

zip function.zip app.py
aws s3 cp function.zip s3://$BUCKET_NAME/function.zip

aws cloudformation deploy \
  --template-file canary-template.yml \
  --stack-name CanaryDeploymentStack \
  --capabilities CAPABILITY_NAMED_IAM
