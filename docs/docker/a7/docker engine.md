****
#remote

## Docker engine layers:
![[Pasted image 20230517125559.png]]
**Docker Deamon:**
Manages volumes containers networks etc.

**Rest API:**
Is here to interact with the docker deamon and what makes the docker cli possible.
You could write your own docker tools with the Rest API

**Docker CLI:**
Command line interface to interact with docker via the rest api.
You can use the docker cli to control docker on other devices by using:
`docker -H=host-or-ip-of-docker-engine-host:port
Example:
`docker -H=192.168.1.132:2375 run nginx