## Personal porpose
This pr9ject is the result with my own scrpts base on intro to containers by 

## Good to use
for using a ubuntu as os run the following command
docker run -it --name docker-host --rm --privileged ubuntu:bionic
 
## Understanding the project structyre
note: follow the syeps of each directory

Dockerfile => os for remote socker
chroot/
  Dockerfile => for its own container and scripts
    Notes.md => co tain all repevant for this unit
    init.sh => will start a docker container with ubuntu:bionic to practice manually
    