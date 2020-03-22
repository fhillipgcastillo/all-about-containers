FROM ubuntu:bionic
RUN apt-get update
RUN apt-get install debootstrap -y
WORKDIR /home/n4mespaces
COPY . .
RUN chmod +x steps.sh
# RUN ./steps.sh
CMD [ "/bin/bash" ]
