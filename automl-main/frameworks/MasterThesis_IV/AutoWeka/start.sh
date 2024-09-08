#!/bin/bash

# Build the Docker image for AutoWeka
docker build -t autoweka-image .

# Run the Docker container, mounting the data directory
docker run --rm -v $(pwd)/../../_data:/data -v $(pwd)/workdir:/workdir autoweka-image
