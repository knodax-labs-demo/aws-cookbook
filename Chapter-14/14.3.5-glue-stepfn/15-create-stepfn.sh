aws stepfunctions create-state-machine \
  --name GlueETLPipeline \
  --definition file://state-machine.json \
  --role-arn arn:aws:iam::$ACCOUNT_ID:role/StepFunctionsRole

aws stepfunctions start-execution \
  --state-machine-arn <STATE_MACHINE_ARN>
