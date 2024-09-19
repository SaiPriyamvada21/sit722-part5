
echo "Pushing Docker image with the following parameters:"
echo "CONTAINER_REGISTRY: $CONTAINER_REGISTRY"
echo "VERSION: $VERSION"
echo "NAME: $NAME"

# Log in to the container registry
echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY -u $REGISTRY_UN --password-stdin

# Tag the Docker image
docker tag $NAME:$VERSION $CONTAINER_REGISTRY/$NAME:$VERSION

# Push the Docker image
docker push $CONTAINER_REGISTRY/$NAME:$VERSION
