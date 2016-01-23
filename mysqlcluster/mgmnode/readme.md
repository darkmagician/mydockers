
#Build Image
`docker build -t mcmgm .`

#Run
`docker run -d --name mgm mcmgm`

#Mgm Client
`docker exec -i -t mgm /opt/mysql/bin/ndb_mgm`

