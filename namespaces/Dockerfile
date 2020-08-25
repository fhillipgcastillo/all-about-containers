FROM ubuntu:bionic
WORKDIR /home/n4mespaces
RUN apt-get update && apt-get install debootstrap sudo -y
COPY . .
CMD [ "/bin/bash" ]
