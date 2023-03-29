# Docker Installation Steps
---
#### Download and install Docker Desktop for windows from following link
- https://docs.docker.com/desktop/install/windows-install/
#### Create and start a new container based on Ubuntu image
```sh
$ docker run ubuntu
```
#### Start a bash shell in the Ubuntu container
```sh
$ docker run -it ubuntu bash
```
#### Now, to get the sudo command working we run the following commands
```sh
$ apt-get update
$ apt-get -y install sudo
```
#### To install sysbench on top of this
```sh
$ sudo apt install -y sysbench
```
#### Now we save this image for future test cases. To do so, get the container ID of last run container
```sh
$ docker ps -a
```
#### Now, in the '<container ID>' placeholder below, enter the container ID you received from the preceding command.
```sh
$ docker commit <container ID> sysbench_ubuntu:v1
E.g.: docker commit 988cf8277625 sysbench_ubuntu:v1
```
#### Check if image creation was successful
```sh
$ docker images
```
#### Check sysbench version installed
```sh
$ sysbench --version
```