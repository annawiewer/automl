# Use Python 3.8 base image
FROM python:3.8-slim-buster

# Set environment variables
ENV DATA_DIR=/workdir/data
ENV WORK_DIR=/workdir

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    g++ \
    python3-pip \
    python3-dev \
    libffi-dev \
    libssl-dev \
    libstdc++6 \
    libatlas-base-dev \
    cython \
    && apt-get clean

# Upgrade pip
RUN pip3 install --no-cache-dir --upgrade pip

# Install H2O and other necessary Python packages
RUN pip3 install h2o==3.32.1.3

# Create necessary directories
RUN mkdir -p $DATA_DIR $WORK_DIR

# Set the working directory
WORKDIR $WORK_DIR

# Copy necessary scripts and data into the container
#COPY /home/devcontainers/automl-frameworks/frameworks/MasterThesis_I/_data/split_data.py $WORK_DIR/
# COPY /home/devcontainers/automl-frameworks/frameworks/MasterThesis_I/_data/run.py $WORK_DIR/

# Run the data splitting script
#RUN python3 split_data.py

# Default command to run the application
CMD ["python3", "run.py"]
