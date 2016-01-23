#Build Image
`docker build -t mcsql .`

#Run
`docker run -d --link mgm -name sql mcsql`

#Client
`docker exec -i -t sql /opt/mysql/bin/mysql`