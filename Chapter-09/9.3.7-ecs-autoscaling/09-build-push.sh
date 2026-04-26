docker build -t $REPO_NAME .
docker tag $REPO_NAME:latest $IMAGE_URI
docker push $IMAGE_URI
