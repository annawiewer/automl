#!/bin/bash

# Build the Docker image for Recipe
docker build -t recipe-image .

# Run the Docker container, mounting the data directory
docker run --rm -v $(pwd)/../../_data:/data -v $(pwd)/workdir:/workdir recipe-image
