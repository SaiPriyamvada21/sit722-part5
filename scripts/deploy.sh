# Your Solution
#!/bin/bash
set -e
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
