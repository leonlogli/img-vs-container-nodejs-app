# Docker "Hello World" Example

This is a simple Docker example that shows how to run a "Hello World" container.

## Prerequisites

Before you get started, you need to have the following tools installed:

- Docker

## Running the "Hello World" Container

Navigate to the root directory of the cloned repository:

Build the Docker image:

```bash
docker build -t img-vs-container-nodejs-app .
```

Run the Docker container:

```bash
docker run -p 80:8080 img-vs-container-nodejs-app
```

To stop the container:

```bash
# get the running container id
docker ps
# stop the container
docker stop container_id
```
