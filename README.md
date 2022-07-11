# ALS-Docker

Follow the instruction to use Docker to run container locally in your laptop.

1. Install Docker:

    **MacOS** (using Homebrew):
    ```
    brew install docker
    ```
    **Windows**
    ```
    ```
    **Linux**
    ```
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

https://training.play-with-docker.com/beginner-linux/
