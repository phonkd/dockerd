****
Always Instruction argument
![Pasted image 20230516141638](docs/docker/resources/Pasted%20image%2020230516141638.png)

## From
Specify the base os e.g alpine:latest or ubuntu:20.04
`from`  `image

## RUN 
executes a command while building the image.
`run any ccommand

## COPY
Copy a file from the local directory into the docker container
`COPY /your/localdir /directory/on/the/container

## Expose
Specify container internal port

## Entrypoint
Runs a command when the image is started.
`ENTRYPOINT py main.py
