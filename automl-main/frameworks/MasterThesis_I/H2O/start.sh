#!/bin/bash

# Build the Docker image for H2O
docker build -t h2o-image .

# Run the Docker container, mounting the data directory
docker run --rm -v $(pwd)/../../_data:/data -v $(pwd)/workdir:/workdir h2o-image
