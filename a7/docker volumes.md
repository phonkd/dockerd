****
## create volume:
>[!note]
>```
>docker volume create mis_volume
>```
*Creates a folder `/var/lib/mis_volume` and saves data in there*

## add volume to container:
`docker run -v volumename:/path/to/where/you/want/in/container/ image
