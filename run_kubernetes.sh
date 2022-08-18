#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=christian1960/udacity4:v1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-microservice --image=$dockerpath --port=5000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
sleep 100
kubectl port-forward udacity-microservice 5000:5000

