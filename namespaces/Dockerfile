FROM ubuntu:bionic
WORKDIR /home/n4mespaces
COPY . .
RUN ./steps.sh ./sec-root
RUN chmod +x req.sh
RUN chmod +x steps.sh
RUN ./req.sh
CMD [ "/bin/bash" ]
