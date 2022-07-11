# ALS-Docker

Follow the instruction to use Docker to run container locally in your laptop.

1. Install Docker:

    **MacOS** (using Homebrew):
    ```
    brew install docker
    
    or install docker desktop https://docs.docker.com/desktop/mac/install/
    ```
    **Windows**
    ```
    https://docs.docker.com/desktop/windows/install/
    ```
    **Linux**
    ```
    https://docs.docker.com/desktop/linux/install/
    ```
2. Build docker image and tag and push to repository (https://hub.docker.com/)
   ```
   docker image build --tag ${DOCKERID}/als-docker:local .
   docker tag ${DOCKERID}/als-docker:local ${DOCKERID}/als-docker
   docker push ${DOCKERID}/als-docker:latest
   ```
2. Create a docker volume to persist home dir data:
    ```
    docker volume create <volume_name>
    ```
3. Run container using docker. Use this command to run the container interacively.
    ```
    docker run -it --mount source=<volume_name>,target=/home/user <docker_image> sh -l
    ```

**Docker Desktop includes:**
* Docker Engine - is an open source containerization technology for building and containerizing applications https://docs.docker.com/engine/
* Docker CLI client
* Docker Compose -Docker Content Trust -  a tool for defining and running multi-container docker applictions https://docs.docker.com/compose/
* Kubernetes - used for managing containerized applications across multiple hosts https://github.com/kubernetes/kubernetes/
* Credential Helper - is a suite of programs to use native stores to keep docker credentials safe https://github.com/docker/docker-credential-helpers/

https://training.play-with-docker.com/beginner-linux/
