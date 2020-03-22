FROM ubuntu:bionic
RUN apt-get update
RUN apt-get install debootstrap -y
WORKDIR /home/chr00t
COPY . .
CMD [ "/bin/bash" ]
