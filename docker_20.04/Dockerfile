# =========================================================
# Trakstar C++ Dockerfile (Ubuntu 20.04)
# =========================================================
FROM ubuntu:20.04

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    libusb-1.0-0-dev \
    libusb-dev \
    git \
    udev \
    usbutils \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
WORKDIR /workspace

# Copy udev rules if present
COPY 99-trakstar.rules /etc/udev/rules.d/99-libusb.rules

# Add a default build entrypoint
CMD ["/bin/bash"]
