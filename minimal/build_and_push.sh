#!/bin/bash

# Define variables
IMAGE_NAME="minimal-aiml"
DOCKERHUB_REPO="dockerhub.com/capturealpha/$IMAGE_NAME"
TAG="latest"

# Build the Docker image
echo "Building Docker image: $DOCKERHUB_REPO:$TAG"
docker build -t $DOCKERHUB_REPO:$TAG .

# Authenticate with Docker Hub
echo "Logging in to Docker Hub"
docker login

# Push the image to Docker Hub
echo "Pushing Docker image to repository"
docker push $DOCKERHUB_REPO:$TAG

echo "Build and push process completed successfully."
