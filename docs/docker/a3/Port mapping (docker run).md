****
[[Docker run]]

>[!warning]
>*Docker Containers running without specified port, are only accessible inside the docker host. (computer runing the container)*

## Access e.g Webapp via dockerhostIP:containerport
`docker run -p hostport:containerport me/mywebapp
