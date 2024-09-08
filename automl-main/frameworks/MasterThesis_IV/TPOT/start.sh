#!/bin/bash

# Build the Docker image for TPOT
docker build -t tpot-image .

# Run the Docker container, mounting the data directory
docker run --rm -v $(pwd)/../../_data:/data -v $(pwd)/workdir:/workdir tpot-image
