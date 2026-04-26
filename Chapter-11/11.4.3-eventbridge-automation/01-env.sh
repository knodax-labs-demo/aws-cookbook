export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

export EMAIL_ADDRESS="your-email@example.com"

export LAMBDA_FUNCTION_NAME="EventBridgeDemoFunction"
export LAMBDA_ROLE_NAME="EventBridgeDemoLambdaRole"
export SCHEDULER_ROLE_NAME="EventBridgeSchedulerInvokeLambdaRole"

export SCHEDULE_NAME="hourly-lambda-schedule"

export SNS_TOPIC_NAME="eventbridge-demo-topic"
export CONSOLE_SIGNIN_RULE_NAME="notify-console-signin-rule"
export EC2_TERMINATION_RULE_NAME="notify-ec2-termination-rule"

export VPC_NAME="eventbridge-demo-vpc"
export SUBNET_NAME="eventbridge-demo-subnet"
export SG_NAME="eventbridge-demo-sg"
export INSTANCE_NAME="eventbridge-demo-instance"

export EMAIL_ADDRESS=your-email@example.com
