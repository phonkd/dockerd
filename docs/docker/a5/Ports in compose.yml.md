****
*similar to [Port mapping (docker run)](docker%20run)))).md)*


**Open port 8080:**
```docker-compose.yml
applikation:
	image: phonkd/applikation
	ports:
		- hostport:containerport
	links:
		- datenbank
datenbank:
	image: phonkd/datenbank
```