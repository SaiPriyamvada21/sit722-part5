

#!/bin/bash

# Exit the script immediately if any command fails
set -e

# Check if environment variables are set
if [ -z "$CONTAINER_REGISTRY" ]; then
  echo "Error: CONTAINER_REGISTRY is not set."
  exit 1
fi

if [ -z "$VERSION" ]; then
  echo "Error: VERSION is not set."
  exit 1
fi

# Push Docker images to the container registry
docker push "$CONTAINER_REGISTRY.azurecr.io/book_catalog:$VERSION"
docker push "$CONTAINER_REGISTRY.azurecr.io/inventory_management:$VERSION"
