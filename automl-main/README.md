# Automl Research Project Setup Using Docker

## Welcome, Team!

This **README** provides clear instructions on how to set up and work with our **Automl Research Project** using Docker. Each framework in this project has its own **Dockerfile**, which creates a **Docker image**—a snapshot of the environment needed to run that specific framework. Docker ensures that everyone in the team works in a consistent environment, avoiding issues that arise from different local setups.

### **Note:**
Currently, the datasets for the project are missing because we haven't finalized which ones we'll be using. Additionally, some of the frameworks in the repository may change in the future. Some frameworks have not been updated recently and may not be adequate for our research goals. We're aiming to include more recent frameworks. After noticing that ATM hasn't been updated in over 5 years, I decided to switch to the mjlar-supervised AutoML Framework, which is actively maintained and still widely used.

This project is a starting point to help everyone understand how Docker works and how to set up a project. The focus is to give you a first idea of the workflow, even though the data and frameworks are subject to change.

---

### Why We’re Using Docker

We are using Docker for several important reasons:
- **Consistency**: Everyone will work with the same environment, eliminating "it works on my machine" issues.
- **Simplified Dependencies**: All the software, libraries, and dependencies are packaged in the Docker image, so you don't need to install anything manually.
- **Easy Collaboration**: By sharing Docker images, we can ensure all team members are working with the exact same setup.
- **Portability**: Docker containers can be run on any machine with Docker installed, making it easy to move between environments.
- **Reproducibility**: Our experiments will be easier to reproduce, as Docker ensures that everyone runs the same setup.

### What’s a Docker Image?

A **Docker image** is like a snapshot of a working environment. It includes the operating system, required libraries, and dependencies to run a specific framework. You can use a Docker image to create a **container**, which is an isolated environment where our framework will run. This way, the framework will behave the same on any machine.

---

### Important: DockerHub Account

Before getting started, make sure you create an account on **DockerHub** if you don't have one already. DockerHub has rate limits for pulling images, and if you're not logged in, you may hit those limits quickly. You can sign up here: [DockerHub Signup](https://hub.docker.com/signup).

Once you have your account, you can log in by running this command:

```bash
docker login -u username -p $(cat docker_access_token)

```
This will ensure you can pull Docker images without hitting the rate limit.

## Getting Started

### Requirements

To run the benchmarks, you'll need:
- A basic Linux machine with Docker installed.
- At least **8 CPU cores** for optimal performance (though this can be adjusted in the Dockerfiles and scripts if needed).

### Step 1: Install Docker
Make sure Docker is installed on your machine. You can download it from the official site:

- [Docker Download](https://www.docker.com/get-started)

Follow the instructions for your operating system to get Docker running.

### Step 2: Clone the Repository

Once Docker is set up, clone the project repository:
bash
git clone https://github.com/t-annawiewer_microsoft/automl.git
Navigate to the project directory:
bash
cd automl
### Step 3: Build and Run the Docker Container for Each Framework

Each framework has its own **Dockerfile**. You will need to build and run the Docker container for any framework you want to use.

#### Example: Building the Docker container for the `H2O` framework

1. Navigate to the `H2O` framework folder:
bash
   cd frameworks/MasterThesis_I/H2O
   
2. Build the Docker container using the `Dockerfile`:
bash
   docker build -t h2o-container .
   
This command will create the Docker image for the `H2O` framework, which includes all the necessary software and dependencies.

3. Run the container:
bash
   docker run -it --name h2o-container h2o-container /bin/bash
   
You’ll now be in an interactive session inside the `H2O` Docker container, ready to run the framework's scripts.

---

### Running the Frameworks

Since there isn’t currently a single script to run all frameworks at once, you’ll need to run them individually.

#### How to run a specific framework

1. Navigate to the framework you want to run:
bash
   cd frameworks/MasterThesis_I/H2O
   
2. Execute the `start.sh` script:
bash
   ./start.sh
   
This will run the H2O framework with its default configuration.

Follow the same steps for other frameworks—just navigate to the relevant folder and run the `start.sh` script for that framework.

We also recommend running these scripts from a **tmux** session to ensure they keep running even if your terminal gets disconnected.

---

## Project Folder Structure

Here’s how the project is organized, with each framework in its own directory:

- **MasterThesis_I**  
  - **H2O**
    - `Dockerfile`: Defines the environment for the H2O framework.
    - `start.sh`: Script to start the H2O framework.
    - **workdir**: Contains additional scripts or configurations.
  - **Ludwig**
  - **Recipe**
- **MasterThesis_II**  
  - **AmazonSageMaker**
  - **AutoSklearn**
  - **mjlar**
- **MasterThesis_III**  
  - **AutoGluon**
  - **AutoKeras**
  - **SmartML**
- **MasterThesis_IV**  
  - **FLAML**
  - **TPOT**
  - **hyperopt-sklearn**

Each folder under `MasterThesis_I`, `MasterThesis_II`, etc., contains everything needed to run that specific AutoML framework.

### Example: H2O Framework Breakdown

Let’s use the `H2O` framework as an example:

1. **Dockerfile**: 
   - This file is used to define the environment (operating system, software, dependencies) needed to run H2O inside a Docker container.
   
   Example snippet:
Dockerfile
   FROM ubuntu:latest
   RUN apt-get update && apt-get install -y python3-pip
   RUN pip install h2o
   
2. **start.sh**: 
   - This script is used to launch the framework once the Docker container is running. It sets up the necessary environment and starts H2O.
   
   Example snippet:
bash
   #!/bin/bash
   echo "Starting H2O framework"
   python3 run.py
   
3. **workdir/**: 
   - This folder contains the files and scripts needed to run H2O-specific tasks. 
   
   For instance, a `run.py` file here might include code to initialize H2O:
python
   import h2o
   h2o.init()
   
You’ll follow similar steps for other frameworks, adapting the Dockerfile and scripts for each.

---

## Data Path Information

**Note**: We haven’t finalized the datasets yet, so the data paths are not currently set. Once we finalize the datasets, we’ll update the repository with the correct data paths and provide instructions on how to access them.

---

