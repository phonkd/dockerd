*Runs a docker image.*

>[!info]
>Image gets pulled from dockerhub if it doesnt exist locally or specified otherwise

## Usage:
`docker run -d (if background) image:tag 

>[!note]
>Docker containers stop immediatly as soon as its job is stopped (e.g webserver)

**Run bash in a container and connect automartically:**
`docker run -it alpine bash

**Run container without stopping for 20s**
`docker run -d image sleep 20s

## Flags:
| Flag   | does                |     
| ------ | ------------------- | 
| -i     | interactive (input) | 
| -t     | Attach terminal     |
| --name | naem the container  |
| -v     | [[Volume Mapping]]      |             

**Port mapping see:** [[Port mapping (docker run)| Port mapping]]
