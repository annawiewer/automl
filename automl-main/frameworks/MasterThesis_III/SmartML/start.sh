#!/bin/bash

# Build the Docker image for SmartML
docker build -t smartml-image .

# Run the Docker container, mounting the data directory
docker run --rm -v $(pwd)/../../_data:/data -v $(pwd)/workdir:/workdir smartml-image
