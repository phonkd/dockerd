****
>[!info]
>Variables like e.g the background_color in say a main.py script can be set to be environement variables.
>![Pasted image 20230516153752](docs/docker/resources/Pasted%20image%2020230516153752.png)
>By running `docker run -e APP_COLOR=blue image` the color variable in the script is set to blue. 

>[!info]
>Find environenemt variables of running container:
>```
>docker inspect container
>```
>Unter "Config" -> Env
>![Pasted image 20230516154448](docs/docker/resources/Pasted%20image%2020230516154448.png)

