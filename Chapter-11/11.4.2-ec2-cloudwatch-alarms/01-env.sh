export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export EMAIL_ADDRESS="your-email@example.com"

export VPC_NAME="cloudwatch-demo-vpc"
export SUBNET_NAME="cloudwatch-demo-subnet"
export SG_NAME="cloudwatch-demo-sg"
export INSTANCE_NAME="cloudwatch-demo-instance"

export SNS_TOPIC_NAME="cloudwatch-demo-topic"
export CPU_EMAIL_ALARM_NAME="cloudwatch-demo-cpu-email-alarm"
export CPU_REBOOT_ALARM_NAME="cloudwatch-demo-cpu-reboot-alarm"
export BILLING_ALARM_NAME="cloudwatch-demo-billing-alarm"
