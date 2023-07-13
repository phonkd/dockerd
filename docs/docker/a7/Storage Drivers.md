****
*Are responsible for dockers storage (Volumes, mounts ...)*
**Docker storage drivers:**
*based on the operating system the best driver is automatically chosen*
- AUFS
- ZFS
- BTRFS
- Device Mapper
- Overlay
- Overlay2
**What storage driver am I using:**
`docker info | grep Storage
![Pasted image 20230519083004](docs/docker/resources/Pasted%20image%2020230519083004.png)
