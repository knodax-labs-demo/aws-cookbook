aws ec2 terminate-instances \
  --instance-ids $PRIMARY_INSTANCE_ID \
  --region $PRIMARY_REGION

aws ec2 terminate-instances \
  --instance-ids $DR_INSTANCE_ID \
  --region $DR_REGION

aws rds delete-db-instance \
  --db-instance-identifier ${DB_ID}-replica \
  --skip-final-snapshot \
  --region $DR_REGION

aws rds delete-db-instance \
  --db-instance-identifier $DB_ID \
  --skip-final-snapshot \
  --region $PRIMARY_REGION

aws s3 rm s3://$PRIMARY_BUCKET --recursive
aws s3 rm s3://$DR_BUCKET --recursive

aws s3api delete-bucket --bucket $PRIMARY_BUCKET --region $PRIMARY_REGION
aws s3api delete-bucket --bucket $DR_BUCKET --region $DR_REGION

aws route53 delete-health-check \
  --health-check-id $HEALTH_CHECK_ID
