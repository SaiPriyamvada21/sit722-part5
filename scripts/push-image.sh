#Log in to Azure Container Registry
echo "$REGISTRY_PW" | docker login "$CONTAINER_REGISTRY" --username "$REGISTRY_UN" --password-stdin

# Push Docker images
docker push "${CONTAINER_REGISTRY}/book_catalog:${VERSION}"
docker push "${CONTAINER_REGISTRY}/inventory_management:${VERSION}"