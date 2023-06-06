****
*by default, docker containers are not restricted in how much resources they can use*

## Cgroups:
*With cgroups you can manage your resources:*
**Set Memory(RAM)**:
`docker run --memory=1024m image` *(max 1gb of ram)*
**Set CPU's**:
`docker run --cpus=.5 image` *(max 50% CPU Usage)*