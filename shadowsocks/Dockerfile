FROM debian:jessie

RUN apt-get update
RUN apt-get -y install python-pip
RUN apt-get clean

RUN pip install shadowsocks


ENV SS_PASS pass
ENV SS_PORT 8388
ENTRYPOINT  /usr/local/bin/ssserver -m aes-256-cfb  -p ${SS_PORT} -k ${SS_PASS}
