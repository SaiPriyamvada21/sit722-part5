# Your Solution
#!/bin/bash
set -e 
docker build -t saipriyamvada21/book_catalog:latest ./book_catalog
docker build -t saipriyamvada21/inventory_management:latest ./inventory_management
