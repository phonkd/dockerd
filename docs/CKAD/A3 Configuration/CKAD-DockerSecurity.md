****

>[!info] Processes
>Processes run inside a docker container are visible on the docker host but with a different PID.

## Users

>[!info] Users & Linux Capabilities
>By default processes in a container are run as root.
>This process however does not have full root privileges on the docekr host, because docker limits them.
>It is possible to add or remove capabilities such as `kill` `docker run --cap-add KILL` `docker run --cap-drop KILL`
>This can be changed by using `docker run --user=1000` or in the image like this:
>```yaml
>FROM Ubuntu
>USER 1000
>```

^75e1ad

## Tips

>[!tip] Security Tips 
>1. Change the user from root to another
>2. drop unnessecary [](.md#^75e1ad)

