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

# Install Amazon SageMaker SDK and other necessary Python packages
RUN pip3 install sagemaker==2.30.0 boto3  # Example version; replace with the correct one

# Create necessary directories
RUN mkdir -p $DATA_DIR $WORK_DIR

# Set the working directory
WORKDIR $WORK_DIR

# Copy necessary scripts and data into the container
#COPY ../_data/split_data.py $WORK_DIR/
COPY workdir/run.py $WORK_DIR/

# Run the data splitting script
#RUN python3 split_data.py

# Default command to run the application
CMD ["python3", "run.py"]
