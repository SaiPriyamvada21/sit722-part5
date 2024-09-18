set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin
docker push $CONTAINER_REGISTRY/book_catalog:latest
docker push $CONTAINER_REGISTRY/inventory_management:latest