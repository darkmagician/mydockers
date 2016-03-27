FROM debian:jessie
#COPY sources.list.cn /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install libaio-dev
RUN apt-get clean

ADD mysql-cluster-gpl-7.4.8-linux-glibc2.5-x86_64.tar.gz /opt
RUN mv /opt/mysql-cluster-gpl-7.4.8-linux-glibc2.5-x86_64  /opt/mysql



RUN groupadd mysql
RUN useradd -g mysql -s /bin/false mysql

RUN chmod +x /opt/mysql/bin/ndb*
