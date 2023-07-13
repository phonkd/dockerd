****

## Starte eine Lokale registry

`docker run -d -p 5000:5000 --name ownreg registry`

## Pushe eigenes gb-frontend image darauf

[[docs/Praktische Projekte/auftraege/exercises with docker/a4 Docker Registry/a4-dockerfile]]

1. Image taggen
   `docker image tag imageid localhost:5000/sleeper`

2. Image pushen
   `docker push localhost:5000/sleeper`

## Bonus mit compose

1. Siehe [[docs/Praktische Projekte/auftraege/exercises with docker/a4 Docker Registry/a4-docker-compose.yml]]

2. `docker-compose up -d`


Hat sleeper tag?
Bei erneutem Push tag?