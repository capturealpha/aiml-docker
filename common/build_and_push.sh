#!/bin/bash

# Define variables
IMAGE_NAME="common-aiml"
DOCKERHUB_REPO="capturealpha/$IMAGE_NAME"
TAG="latest"

# Authenticate with Docker Hub
echo "Logging in to Docker Hub"
docker login || { echo "Docker login failed"; exit 1; }

# Build the Docker image
echo "Building Docker image: $DOCKERHUB_REPO:$TAG"
docker build -t $DOCKERHUB_REPO:$TAG . || { echo "Docker build failed"; exit 1; }

# Push the image to Docker Hub
echo "Pushing Docker image to repository"
docker push $DOCKERHUB_REPO:$TAG || { echo "Docker push failed"; exit 1; }

echo "Build and push process completed successfully."
