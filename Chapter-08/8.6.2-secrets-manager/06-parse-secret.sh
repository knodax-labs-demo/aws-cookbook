SECRET=$(aws secretsmanager get-secret-value   --secret-id $SECRET_NAME   --query SecretString   --output text   --region $REGION)

echo $SECRET | jq
