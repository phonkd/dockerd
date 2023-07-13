#basics
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

| Flag         | does                                                        |
| ------------ | ----------------------------------------------------------- |
| -i           | interactive (input)                                         |
| -t           | Attach terminal                                             |
| --name       | name the container                                          |
| -v           | [Volume Mapping](Volume%20Mapping.md)   [docker volumes](docker%20volumes.md)                     |
| -e           | [Environement Variables](Environement%20Variables.md)                                  |
| --entrypoint | Set the entrypoint from the docker run [CMD & Entrypoint](CMD%20&%20Entrypoint.md) |
| --link       |  [docker run --links](docker%20run%20--links.md)                                                           |
| --restart    | set restart police e.g (always, unless stopped,...)         |
| -H=          | Set host where to execute docker command[docker engine](docker%20engine.md)   |
| --cpus=      | limit cpu usage [cgroups (control groups)](control%20groups)))).md)                |
| --memory=    | limit memory usage [cgroups (control groups)](control%20groups)))).md)             |
| [--mount](--mount.md)  | newer version of -v                                         |
| [--network](Docker%20networking.md)       |             set one of the 3 networks docker uses (default=bridge)                                                |

**Port mapping see:** [ Port mapping](docs/docker/a3/Port%20mapping%20(docker%20run).md)
