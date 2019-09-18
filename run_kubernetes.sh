#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="bgilbank/api"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run bgilbank-api --image=$dockerpath:v1 --port=8080 

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/api 8000:80
