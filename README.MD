# All about Contaoners
## Personal porpose
This project is the result of my own scripts base on the complete intro to containers by Brian Holt

## Good to use
for using an ubuntu as os to be able to run the commands
docker run -it --name docker-host --rm --privileged ubuntu:bionic
 
## Understanding the project structure
note: follow the syeps of each directory

* Dockerfile => os for remote docker
* chroot/
  * Dockerfile => for its own container and scripts
  * Notes.md => co tain all relevant for this unit
  * init.sh => will start a docker container with ubuntu:bionic to practice manually
  * steps.sh => script withh steps to complete all leqrned
* namespaces/
  

Course followe up notes https://btholt.github.io/complete-intro-to-containers/


## A hacker lab 
https://github.com/johackim/docker-hacklab

### run it with
docker run --name hacklab --net=host --privileged -it ston3o/docker-hacklab zsh
