****
## Version 1 vs Version 2
Version1:
```yaml
ubuntu:
	build: "./ubuntu"
alpine:
	build: "./alpine"
srv:
	build: "./nginx"
```
>[!info]
>**Syntax:**
>In version 2, everything is under `services:`
>You are also required to specify `version:` in version 2 and above.
>**Networking:**
>- In verstion 1 you link different services with eachother so they can communicate.
>- In version 2 all of the services are automatically linked and no `links:` needs to be specified.>
>
>**depends_on** (version2 and above only):
>In version 2:
>-  By adding `depends_on:` to a service, it starts as soon as the dependency is running. 
>	- E.g start the database as soon as the database with the name db is running.


**Version2:** (start nginx as soon as alpinee is running)
```yaml
version: "2"
services:
	ubuntu:
		build: "./ubuntu"
	srv:
		build: "./nginx"
		depends_on:alpinee
	alpinee:
		build: "./alpine"
	
```

## Version 2 vs Version 3
