#basics
## Usage: 
**remove a container**
```docker
docker rm  name/containerid
```

>[!warning]
>stop containers first

**Delete all containers**
`docker rm $(docker ps -aq)
