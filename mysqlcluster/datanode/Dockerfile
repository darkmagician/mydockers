FROM mcbase

RUN mkdir -p /usr/local/mysql/ndata
ENTRYPOINT /opt/mysql/bin/ndbmtd --nodaemon --initial --connect-string="host=${MGM_PORT_1186_TCP_ADDR}:1186"
