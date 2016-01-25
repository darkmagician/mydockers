FROM debian:jessie
#COPY sources.list.cn /etc/apt/sources.list
#RUN apt-get update
#RUN apt-get -y install apt-transport-https

COPY 1D27208A.gpg /root/1D27208A.gpg
RUN apt-key add /root/1D27208A.gpg
RUN echo "deb http://shadowsocks.org/debian wheezy main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install shadowsocks-libev

