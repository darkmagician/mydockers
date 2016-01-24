FROM debian:jessie

#COPY sources.list.cn /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install python-pip
RUN pip install shadowsocks


ENV SS_PASS pass
ENV SS_PORT 8388
ENTRYPOINT  /usr/local/bin/ssserver -m aes-256-cfb  -p ${SS_PORT} -k ${SS_PASS}
