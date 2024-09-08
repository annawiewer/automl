#!/bin/bash

# Build the Docker image for Ludwig
docker build -t ludwig-image .

# Run the Docker container, mounting the data directory
docker run --rm -v $(pwd)/../../_data:/data -v $(pwd)/workdir:/workdir ludwig-image
