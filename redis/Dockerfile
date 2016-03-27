FROM debian:jessie

RUN apt-get update
RUN apt-get -y install redis-server
RUN apt-get clean
EXPOSE      6379
ENTRYPOINT  ["/usr/bin/redis-server"]
