#!/bin/bash

# Build the Docker image for AutoGluon
docker build -t autogluon-image .

# Run the Docker container, mounting the data directory
docker run --rm -v $(pwd)/../../_data:/data -v $(pwd)/workdir:/workdir autogluon-image
