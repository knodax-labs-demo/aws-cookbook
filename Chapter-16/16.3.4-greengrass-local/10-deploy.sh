aws greengrassv2 create-component-version \
  --inline-recipe fileb://recipe.yaml

aws greengrassv2 create-deployment \
  --target-arn arn:aws:iot:<REGION>:<ACCOUNT_ID>:thing/$THING_NAME \
  --components '{"com.example.temperature":{"componentVersion":"1.0.0"}}'
