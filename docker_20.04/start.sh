#!/usr/bin/env bash
CONTAINER_NAME=trakstar_20.04
IMAGE_NAME=trakstar_20.04:latest

# Build image if it doesn't exist
if ! docker image inspect $IMAGE_NAME > /dev/null 2>&1; then
    echo "Building Docker image..."
    docker build -t $IMAGE_NAME .
fi

# Start container
docker run -it --rm \
    --name $CONTAINER_NAME \
    --privileged \
    --device=/dev/bus/usb \
    -v $(pwd):/workspace \
    $IMAGE_NAME
