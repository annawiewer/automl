#!/bin/bash

# Build the Docker image for hyperopt-sklearn
docker build -t hyperopt-sklearn-image .

# Run the Docker container, mounting the data directory
docker run --rm -v $(pwd)/../../_data:/data -v $(pwd)/workdir:/workdir hyperopt-sklearn-image
