# Your Solution
#
# Publishes a Docker image.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   REGISTRY_UN - User name for your container registry.
#   REGISTRY_PW - Password for your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./scripts/push-image.sh
#

# Define the container registry URL (ECR URL)
#CONTAINER_REGISTRY="${{ secrets.AWS_ACCOUNT_ID }}.dkr.ecr.${{ secrets.AWS_DEFAULT_REGION}}.amazonaws.com"

# Log in to the AWS ECR
aws ecr get-login-password --region "${AWS_DEFAULT_REGION}" | docker login --username AWS --password-stdin "${ECR_REPOSITORY_URL}"

# Tag the images for each microservice
docker tag "book_catalog" "${ECR_REPOSITORY_URL}:book_catalog"
docker tag "inventory_management" "${ECR_REPOSITORY_URL}:inventory_management"

# Push images for all microservices
docker push "${ECR_REPOSITORY_URL}:book_catalog"
docker push "${ECR_REPOSITORY_URL}:inventory_management"