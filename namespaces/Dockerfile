FROM ubuntu:bionic
WORKDIR /home/n4mespaces
COPY . .
RUN chmod +x req.sh
RUN chmod +x steps.sh
RUN ./req.sh
RUN ./steps.sh /sec-root
CMD [ "/bin/bash" ]
