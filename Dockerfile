FROM ubuntu:bionic
WORKDIR /root/development
COPY . .
RUN apt-get update
CMD [ "/bin/bash" ]