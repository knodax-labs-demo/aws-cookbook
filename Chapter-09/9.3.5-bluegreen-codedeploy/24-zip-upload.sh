zip appspec.zip appspec.yaml
aws s3 mb s3://webapp-deployments-<account-id>
aws s3 cp appspec.zip s3://<your-bucket>/appspec.zip
