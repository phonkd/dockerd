****
*useful when the image is not yet on dockerhub or you want it to be build when running docker compose up*


```
version: 2
services:
	ubuntu:
		image: "phonkd/ubuntu"
	alpine:
		image: "phonkd/alpine"
	srv:
		image: "phonkd/nginx"
```
- Replace `image: "phonkd/ubuntu"`  with `build: "path/to/directory/with/dockerfile"
```
version: "2"
services:
	ubuntu:
		build: "./ubuntu"
	alpine:
		build: "./alpine"
	srv:
		build: "./nginx"
```