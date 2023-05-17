****
## Warum?
**Problem:**
```docker
docker run phonkd/ubuntu
docker run phonkd/alpine
docker run phonkd/nginx
```
**Lösung:**

```yaml
version: "2"
services:
	ubuntu:
		image: "phonkd/ubuntu"
	alpine:
		image: "phonkd/alpine"
	srv:
		image: "phonkd/nginx"
```
`docker-compose up -d 
## options:
| option          | does                                                                           | example value |
| --------------- | ------------------------------------------------------------------------------ | ------------- |
| image:          | specify docker image                                                           |  phonkd/ubuntu             |
| container_name: | specify container name                                                         |  somename             |
| networks:       | specify what networks the container gets connected to. See [[Docker networks]] |   - backend            |
| version:        | specify docker-compose version                                                 |        "2"       |


[[Docker networks]]
