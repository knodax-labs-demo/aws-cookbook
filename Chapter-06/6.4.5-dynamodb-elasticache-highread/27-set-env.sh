aws lambda update-function-configuration \
  --function-name ddb-cache-invalidator \
  --environment "Variables={REDIS_HOST=<your-redis-endpoint>,REDIS_PORT=6379}"
