#!/usr/bin/env bash
set -e

IMAGE_NAME=trakstar_22.04:latest

echo "🚀 Building Docker image: $IMAGE_NAME"
docker build -t $IMAGE_NAME -f docker_22.04/Dockerfile .

echo "✅ Docker image '$IMAGE_NAME' built successfully!"
