# Your Solution
#!/bin/bash
# set -e
# docker push saipriyamvada21/book_catalog:latest
# docker push saipriyamvada21/inventory_management:latest

#!/bin/bash

# Set image name
IMAGE_NAME="saipriyamvada21/book_catalog"

# Log in to Docker Hub
docker login -u saipriyamvada21 -p Saibabapriya@21

# Push the image
docker push $IMAGE_NAME
