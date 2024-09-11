#!/bin/bash

# Build the Docker image for AmazonSageMaker
docker build -t mjlar-image .

# Run the Docker container, mounting the data directory
docker run --rm -v $(pwd)/../../_data:/data -v $(pwd)/workdir:/workdir mjlar-image
