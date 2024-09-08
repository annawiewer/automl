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
    python3-venv \
    libffi-dev \
    libssl-dev \
    libstdc++6 \
    libatlas-base-dev \
    cython \
    && apt-get clean

# Upgrade pip
RUN pip3 install --no-cache-dir --upgrade pip

# Install specific versions of Python packages
RUN pip3 install numpy==1.22.4 scipy==1.7.1 scikit-learn==0.24.2 pandas==1.3.0 joblib==1.0.1 Cython==0.29.24

# Install AutoSklearn and additional Python packages
RUN pip3 install auto-sklearn==0.15.0 openml==0.14.1

# Create necessary directories
RUN mkdir -p $DATA_DIR $WORK_DIR

# Set the working directory
WORKDIR $WORK_DIR

# Copy only the necessary script into the container
COPY workdir/run.py $WORK_DIR/

# Remove the split_data.py execution
# RUN python3 split_data.py

# Default command to run the application
CMD ["python3", "run.py"]

