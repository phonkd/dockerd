*after a docker container is removed, the data is gone.*
*To keep data after container removal you can map a directory from the container to a local folder.
`docker run -v /path/on/local/machine:/path/in/container image