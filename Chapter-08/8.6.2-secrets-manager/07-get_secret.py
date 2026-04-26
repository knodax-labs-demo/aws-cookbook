import boto3
import json

client = boto3.client('secretsmanager', region_name='us-east-1')

response = client.get_secret_value(SecretId='MyAppDatabaseSecret')
secret = json.loads(response['SecretString'])

print("Username:", secret['username'])
print("Password:", secret['password'])
