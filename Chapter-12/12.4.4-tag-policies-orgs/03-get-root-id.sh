ROOT_ID=$(aws organizations list-roots \
  --query 'Roots[0].Id' \
  --output text)

echo $ROOT_ID
