FROM ubuntu:bionic
RUN apt-get update
RUN apt-get install debootstrap -y
WORKDIR /home/chr00t
COPY . .
RUN chmod +x steps.sh
RUN ./steps.sh
CMD [ "/bin/bash" ]
