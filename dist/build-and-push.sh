#!/bin/bash

DOCKER_USERNAME="keerthivasan041803"
REPO_NAME="trend-repo"
IMAGE_NAME="$DOCKER_USERNAME/$REPO_NAME"
IMAGE_TAG=$(git rev-parse --short HEAD)

echo "Logging into Docker Hub..."
docker login -u "$DOCKER_USERNAME" -p "kee@77189"

echo "Building Docker image..."
docker build -t $IMAGE_NAME:$IMAGE_TAG -f dist/Dockerfile dist/

echo "Tagging image as latest..."
docker tag $IMAGE_NAME:$IMAGE_TAG $IMAGE_NAME:latest

echo "Pushing image to Docker Hub..."
docker push $IMAGE_NAME:$IMAGE_TAG
docker push $IMAGE_NAME:latest
