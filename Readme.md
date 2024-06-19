# Docker Image for darts-caller with Pipewire

This repository contains a build script and a Dockerfile to extend the [darts-caller](https://github.com/lbormann/darts-caller) extension for [Autodarts.io](https://autodarts.io/) with some dependencies to use Pipewire for local audio playback.

## Running the container 

You need to mount the Pipewire socket into the container to play audio via the host's audio server.

Example docker-compose.yaml.

```yaml
services:
  darts-caller:
    image: creaaz/darts-caller-pipewire:latest
    volumes:
      - /run/user/1000/pipewire-0:/tmp/pipewire-0
    environment:
      - XDG_RUNTIME_DIR=/tmp
```

## Building the container

The repository contains a build script that creates a multi-platform build for `linux/arm64` and `linux/amd64` for a given release of [darts-caller](https://github.com/lbormann/darts-wled) available on Docker Hub. Ensure that the provided tag is available, e.g. `latest`

The script automatically publishes the images to a repository, e.g. Docker Hub. Make sure that you are logged in with the Docker CLI and define the appropriate repository / Docker Hub username to push the images.

```./build-docker.sh -v latest -u  <your_docker_hub_user>```





