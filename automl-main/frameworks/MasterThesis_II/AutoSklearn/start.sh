#!/bin/bash

# Build the Docker image
docker build -t autosklearn-image .

# Run the Docker container, mounting the data directory
docker run --rm -v $(pwd)/../../data:/data -v $(pwd)/workdir:/workdir autosklearn-image


