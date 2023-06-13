****
## create volume:
>[!note]
>```
>docker volume create mis_volume
>```
*Creates a folder `/var/lib/mis_volume` and saves data in there*

## add volume to container:
`docker run -v volumename:/path/to/where/you/want/in/container/ image
>[! info]
>If the volume specified in the run command does not exist, it will be created.

## Mount any folder on the host to the container as volume:
`docker run -v /path/to/your/folder/locally:incontainerfolder


## in compose

```
volumes:
 - ./index.html:/var/www/html/index.html
```