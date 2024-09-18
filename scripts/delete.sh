# Destroys the microservices on Kubernetes.
# ./scripts/delete.sh

envsubst < ./scripts/kubernetes/deploy.yaml | kubectl delete -f -