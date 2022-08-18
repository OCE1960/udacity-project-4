#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t udacity4 .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
# docker run -d -p 5000:5000 --name udacity -it udacity4 python3 -m http.server --bind 0.0.0.0
# docker run --rm -d --network host --name udacity
# docker run --network host -d --name udacity -it udacity4
docker run  -p 5000:5000  --name udacity-microservice -it udacity4 
