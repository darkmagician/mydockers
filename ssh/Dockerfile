FROM debian:jessie

RUN apt-get update
RUN apt-get -y install openssh-server
RUN apt-get -y install wget
RUN apt-get -y install unzip

RUN apt-get clean
RUN useradd -m admin
EXPOSE      22
ENV PASS adminpass
RUN mkdir /var/run/sshd  
CMD  ["echo admin:$PASS | chpasswd  && /usr/sbin/sshd -D"]
ENTRYPOINT ["/bin/sh","-c"]

