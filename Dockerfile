# syntax=docker/dockerfile:1

FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
RUN mkdir /home/app
WORKDIR /home/app

## Step 2:
# Copy source code to working directory
COPY requirements.txt requirements.txt

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
# ENV PIP_NO_CACHE_DIR=1
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

## Step 4:
# Expose port 80
EXPOSE 5000

## Step 5:
# Run app.py at container launch
CMD [ "flask", "run","--host","0.0.0.0"]

