****
*Make services in a docker compose file available to eachother*
*Functions similar to [[docker run --links]]*
## Example:
```docker-compose.yml
applikation:
	image: phonkd/applikation
	links:
		- datenbank
datenbank:
	image: phonkd/datenbank
```