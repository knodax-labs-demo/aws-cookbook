aws deploy delete-deployment-group --application-name WebAppCodeDeploy --deployment-group-name WebAppDG
aws deploy delete-application --application-name WebAppCodeDeploy
aws ecs delete-service --cluster webapp-cluster --service webapp-service --force
aws ecs delete-cluster --cluster webapp-cluster
aws ecr delete-repository --repository-name webapp-repo --force
