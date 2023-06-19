****

## Starte eine Lokale registry

`docker run -d -p 5000:5000 --name ownreg registry`

## Pushe eigenes gb-frontend image darauf

[a4-dockerfile](a4-dockerfile)

1. Image taggen
   `docker image tag imageid localhost:5000/sleeper`

2. Image pushen
   `docker push localhost:5000/sleeper`

## Bonus mit compose

1. Siehe [a4-docker-compose](a4-docker-compose.yml)

2. `docker-compose up -d`