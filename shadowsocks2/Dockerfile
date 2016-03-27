FROM debian:jessie

COPY 1D27208A.gpg /root/1D27208A.gpg
RUN apt-key add /root/1D27208A.gpg
RUN echo "deb http://shadowsocks.org/debian wheezy main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install shadowsocks-libev
RUN apt-get clean

ENV SS_PASS pass
ENV SS_PORT 8388
EXPOSE ${SS_PORT}
ENTRYPOINT  /usr/bin/ss-server -m aes-256-cfb  -p ${SS_PORT} -k ${SS_PASS}

