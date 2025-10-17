#!/usr/bin/env bash
CONTAINER_NAME=trakstar_22.04
IMAGE_NAME=trakstar_22.04:latest

# Check if image exists: 
if ! docker image inspect $IMAGE_NAME > /dev/null 2>&1; then
    echo "Image not found."
fi

# Start container
docker run -it --rm \
    --name $CONTAINER_NAME \
    --privileged \
    --device=/dev/bus/usb \
    -v $(pwd):/workspace \
    $IMAGE_NAME
