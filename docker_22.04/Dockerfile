# =========================================================
# Trakstar C++ Dockerfile (Ubuntu 22.04)
# =========================================================
FROM ubuntu:22.04

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

# Set workspace
WORKDIR /workspace

# Copy udev rules
COPY ../99-trakstar.rules /etc/udev/rules.d/99-libusb.rules

# Default entrypoint
CMD ["/bin/bash"]
