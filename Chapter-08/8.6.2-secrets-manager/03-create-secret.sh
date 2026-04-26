aws secretsmanager create-secret   --name $SECRET_NAME   --description "RDS MySQL Credentials"   --secret-string '{"username":"admin","password":"SecurePass#123"}'   --region $REGION
