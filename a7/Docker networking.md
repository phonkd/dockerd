****
**Docker creates 3 networks automatically:**
- Bridge (default)
- none (if `docker run image --network=none)
- host (if `docker run image network=host)
- User defined 

## Bridge
*Private internal Network of host*
![](Pasted%20image%2020230519091901.png)
Containers get a private IP adress (usually 127.0.0.any).
**Access containers in bridge network**
- Map port from container to docker host

## Host
*A container running e.g apache with the option --network=host network wise is the same as running it directly (not in container).
>[!warning]
>This means you can run two containers at the same time that use the same port
>![](Pasted%20image%2020230519092211.png)

## none
*Isolated Network without access to the outside or any other containers*

## User defined
```docker
docker network create \
-- driver bridge \
--subnet 182.18.0.0/16 (or other)
name-of-my-network
```
## List networks
`docker network ls
**Network configuration of container:**
`docker inspect containerid | grep "NetworkMode"

## Inspect network
`docker network inspect` e.g `bridge

## Embedded DNS:
Dockers DNS server IP:
- 127.0.0.11
If two containers need to connect to eachother, using the IP adress is not recommended since restarting the container could change its IP.
With dockers build in DNS server you can access other containers by their name.