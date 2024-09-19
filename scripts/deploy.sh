
set -u 
: "$CONTAINER_REGISTRY"
: "$DIRECTORY"
: "$VERSION"
: "$DATABASE_URL"

envsubst < ./scripts/kubernetes/${DIRECTORY}_deployment.yaml | kubectl apply -f -