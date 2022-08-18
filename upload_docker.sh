#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=christian1960/udacity4:v1

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag udacity4:latest $dockerpath
docker login --username christian1960 --password $password

# Step 3:
# Push image to a docker repository
docker push $dockerpath
