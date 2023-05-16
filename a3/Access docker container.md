## Local (via IP):
1. Get ip adress `docker inspect containerid | grep "IPAddress"
2. get port `docker ps
3. Access `ipadress:port

## Via docker host ip:port
`docker run -p hostport:containerport me/mywebapp