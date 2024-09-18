# Deploys the microservices to Kubernetes.
# Assumes the image has already been built and published to the container registry.
# ./scripts/deploy.sh

envsubst < ./scripts/kubernetes/deploy.yaml | kubectl apply -f -