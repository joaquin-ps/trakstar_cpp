#!/usr/bin/env bash
set -e

IMAGE_NAME=trakstar_20.04:latest

# Build from repo root so Docker can see everything
echo "🚀 Building Docker image: $IMAGE_NAME"
docker build -t $IMAGE_NAME -f docker_20.04/Dockerfile .

echo "✅ Docker image '$IMAGE_NAME' built successfully!"
