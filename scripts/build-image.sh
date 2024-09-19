#!/bin/bash

# Ensure required environment variables are set
set -u # or set -o nounset
: "${CONTAINER_REGISTRY:?CONTAINER_REGISTRY is not set}"
: "${VERSION:?VERSION is not set}"
: "${NAME:?NAME is not set}"
: "${DIRECTORY:?DIRECTORY is not set}"

# Debug information
echo "Building Docker image with the following parameters:"
echo "CONTAINER_REGISTRY: $CONTAINER_REGISTRY"
echo "VERSION: $VERSION"
echo "NAME: $NAME"
echo "DIRECTORY: $DIRECTORY"

# Build the Docker image
docker build -t "$CONTAINER_REGISTRY/$NAME:$VERSION" --file ./$DIRECTORY/Dockerfile ./$DIRECTORY
