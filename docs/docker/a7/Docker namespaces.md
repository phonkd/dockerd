****
*A linunx operating system starts with a PID (proccess ID) 1 and a bunch of following ids*
Processes in a docker container run directly on the host operating system.
Inside the docker container the system also starts with PID 1.
With a namespace the PID in the container can still be 1 while it is another numebr on the host.
![Pasted image 20230517133206](docs/docker/resources/Pasted%20image%2020230517133206.png)
Inside of a docker container the ID of a service is different from the id on the host even tho it  references the same process.