aws deploy create-deployment \
  --application-name WebAppCodeDeploy \
  --deployment-group-name WebAppDG \
  --s3-location bucket=<your-bucket>,bundleType=zip,key=appspec.zip
