cat > recipe-steps.json <<'EOF'
[
  {
    "Action": {
      "Operation": "REMOVE_VALUES",
      "Parameters": {
        "sourceColumn": "name"
      }
    },
    "ConditionExpressions": [
      {
        "Condition": "NOT_STARTS_WITH",
        "Value": "S",
        "TargetColumn": "name"
      }
    ]
  }
]
EOF
aws databrew publish-recipe \
  --name $RECIPE_NAME \
  --description "Published recipe for filtering baby names starting with S" \
  --region $REGION
aws databrew publish-recipe \
  --name $RECIPE_NAME \
  --description "Published recipe for filtering baby names starting with S" \
  --region $REGION

export RECIPE_VERSION=1.0
