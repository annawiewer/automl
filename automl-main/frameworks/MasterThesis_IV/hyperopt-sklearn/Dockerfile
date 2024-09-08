# Use Python 3.8 base image
FROM python:3.8-slim-buster

# Set environment variables
ENV DATA_DIR=/workdir/data
ENV WORK_DIR=/workdir

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    g++ \
    python3-pip \
    python3-dev \
    libffi-dev \
    libssl-dev \
    libstdc++6 \
    libatlas-base-dev \
    cython \
    && apt-get clean

# Upgrade pip
RUN pip3 install --no-cache-dir --upgrade pip

# Install hyperopt-sklearn and other necessary Python packages
RUN pip3 install hyperopt-sklearn==0.1.
