set -u # or set -o nounset
: "$CONTAINER_REGISTRY"

docker buildx build --platform linux/amd64 -t $CONTAINER_REGISTRY/book_catalog:latest --file ./book_catalog/Dockerfile .
docker buildx build --platform linux/amd64 -t $CONTAINER_REGISTRY/inventory_management:latest --file ./inventory_management/Dockerfile .