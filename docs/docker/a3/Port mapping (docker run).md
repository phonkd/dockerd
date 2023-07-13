****
[Docker run](Docker%20run.md)

>[!warning]
>*Docker Containers running without specified port, are only accessible inside the docker host. (computer runing the container)*

## Access e.g Webapp via dockerhostIP:containerport
`docker run -p hostport:containerport me/mywebapp
