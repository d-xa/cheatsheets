# Docker Cheatsheet

## Getting Started
```
docker run hello-world
docker pull busybox
dock images
docker run busybox
docker ps
docker ps -a
docker run -it busybox bash
docker rm $(docker ps -a -q -f status=exited)
```

## Terminology
| Term | Description |
| --- | --- |
| Images |The blueprints of our application which form the basis of containers |
| Containers | Created from Docker images and run the actual application. |
| Docker Daemon | The background service running on the host that manages building, running and distributing Docker containers. The daemon is the process that runs in the operating system which clients talk to. |
| Docker Client | The command line tool that allows the user to interact with the daemon. |
| Docker Hub | A registry of Docker images. Like github for git. |


## Build
Build an image from the Dockerfile in the current directory and tag the image
```
docker build -t myimage:1.0
```

List all images that are locally stored with the Docker engine
```
docker image ls
```

Delete an image from the local image store
```
docker image rm alpine:3.4
```

## Run
Run image busybox, if no tag provided will take the latest by default
```
docker run busybox
```


## Share
Pull an image from a registry
```
docker pull myimage:1.0
```

Retag a local image with a new image name and tag
```
docker tag myimage:1.0 myrepo/myimage:2.0
```

Push an image to a registry
```
docker push myrepo/myimage:2.0
```

## Troubleshooting
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock
```
sudo chmod 666 /var/run/docker.sock
```

or by adding group as described in https://docs.docker.com/engine/install/linux-postinstall/
```
sudo groupadd docker
getent group
sudo usermod -aG docker $USER
newgrp docker
```
