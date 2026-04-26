export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

export SOURCE_BUCKET=databrew-source-$ACCOUNT_ID
export OUTPUT_BUCKET=databrew-output-$ACCOUNT_ID

export DATASET_NAME=BabyNamesDataset
export RECIPE_NAME=FilterBabyNamesRecipe
export JOB_NAME=FilterBabyNamesJob
export ROLE_NAME=DataBrewServiceRole
