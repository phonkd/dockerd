****
*Solution for automatically managing containers, similar to kubernetes*
## Requirements:
- Multiple docker hosts

==Workers==\===nodes==



## Setup
- Define Swarm manager
- Define Workers
- Run `docker swarm init` on swarm manager host
- Run `docker swarm join --token `"token from swarm manager" on all of the workers

## Docker service
*Run an image distributed on the Docker swarm cluster"
>[!warning]
>Commands must be run on Swarm manager

>[!note]
>**Create a service (run image on cluster**
>```
>docker service create --replicas 21 my-image
>```
>*This command is similar to docker run so you can use many of the parameters*

