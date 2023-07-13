****

## Starte eine Lokale registry

`docker run -d -p 5000:5000 --name ownreg registry`

## Pushe eigenes gb-frontend image darauf

[a4-dockerfile](docs/Praktische%20Projekte/auftraege/exercises%20with%20docker/a4%20Docker%20Registry/a4-dockerfile)

1. Image taggen
   `docker image tag imageid localhost:5000/sleeper`

2. Image pushen
   `docker push localhost:5000/sleeper`

## Bonus mit compose

1. Siehe [a4-docker-compose](docs/Praktische%20Projekte/auftraege/exercises%20with%20docker/a4%20Docker%20Registry/a4-docker-compose.yml)

2. `docker-compose up -d`


Hat sleeper tag?
Bei erneutem Push tag?