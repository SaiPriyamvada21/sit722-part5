#!/bin/bash

# Exit the script immediately if any command fails
set -e

# Debugging - print the values
echo "CONTAINER_REGISTRY: $CONTAINER_REGISTRY"
echo "VERSION: $VERSION"

# Check if environment variables are set
if [ -z "$CONTAINER_REGISTRY" ]; then
  echo "Error: CONTAINER_REGISTRY is not set."
  exit 1
fi

if [ -z "$VERSION" ]; then
  echo "Error: VERSION is not set."
  exit 1
fi

# Ensure the container registry URL has no extra spaces and is formatted correctly
docker push "${CONTAINER_REGISTRY}.azurecr.io/book_catalog:$VERSION"
docker push "${CONTAINER_REGISTRY}.azurecr.io/inventory_management:$VERSION"
