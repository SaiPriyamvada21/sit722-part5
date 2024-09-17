# Your Solution
#!/bin/bash
set -e
kubectl apply -f scripts/kubernetes/deployment.yaml
kubectl apply -f scripts/kubernetes/service.yaml
