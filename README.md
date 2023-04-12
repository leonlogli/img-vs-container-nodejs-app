# Docker "img-vs-container-nodejs-app" Example

This is a simple Docker example that shows the difference between docker image and container

## Prerequisites

Before you get started, you need to have the following tools installed:

- Docker

## Running the "img-vs-container-nodejs-app" Container

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

Restart the container in detached mode:

```bash
docker start container_id
```

Get the container logs:

```bash
docker logs container_id
```

Get the container logs in attached mode:

```bash
docker logs -f container_id
```

Attach the running container:

```bash
docker attach container_id
```

Run the Docker container in detached mode:

```bash
docker run -d -p 80:8080 img-vs-container-nodejs-app
```
