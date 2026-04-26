SECRET_ARN=$(aws secretsmanager describe-secret   --secret-id $SECRET_NAME   --region $REGION   --query ARN   --output text)

echo $SECRET_ARN
