****
```dockerfile
FROM Ubuntu
RUN apt-get update
RUN apt-get -y install python
COPY . /opt/sourcecode
Entrypoint
```

Docker images are layered.
Each instruction in a dockerfile contains a layer.
Each layer contains only the changes from the previous layer.
So that if you add another instruction, it just adds another layer instead of rebuilding the entire thing.
![Pasted image 20230517140029](docs/docker/resources/Pasted%20image%2020230517140029.png)

