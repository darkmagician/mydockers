#Build Image
`docker build -t mcdata .`

#Run
`docker run -d --link mgm --name data1 mcdata`