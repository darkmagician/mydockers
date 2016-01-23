FROM mcbase

RUN apt-get -y install perl-modules
RUN mkdir -p /usr/local/mysql/data
RUN cd /opt/mysql;./scripts/mysql_install_db --user=mysql --datadir=/usr/local/mysql/data
RUN cd /opt/mysql;chown -R root .
RUN cd /opt/mysql;chown -R mysql data
RUN cd /opt/mysql;chgrp -R mysql .

ADD my.cnf /etc/
EXPOSE 3306
ENTRYPOINT /opt/mysql/bin/mysqld_safe --user=mysql --basedir=/opt/mysql --ledir=/opt/mysql/bin --datadir=/usr/local/mysql/data --ndb-connectstring=${MGM_PORT_1186_TCP_ADDR}
