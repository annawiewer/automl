#!/bin/bash

# Build the Docker image for flaml
docker build -t FLAML-image .

# Run the Docker container, mounting the data directory
docker run --rm -v $(pwd)/../../_data:/data -v $(pwd)/workdir:/workdir FLAML-image
