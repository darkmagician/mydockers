FROM debian:jessie

RUN apt-get update
RUN apt-get -y install wget
RUN apt-get clean

RUN wget https://github.com/kendou/lantern/raw/master/lantern_linux_amd64 -O lantern
RUN chmod +x lantern

EXPOSE 8787
EXPOSE 16823
ENTRYPOINT [ "/lantern", "--addr", "0.0.0.0:8787" ]

