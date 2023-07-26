****

1. Starte den gb-frontend container und nehme änderungen an `index.html` vor.
   
>[!answer]
>```
>docker compose up -d
>docker exec -it containerid bash
>apt install vim
>vim index.html
>```

2. Rufe die website auf, kannst du die änderung sehen?
   
   >[!answer]
   >Ja
   
3. starte den container neu, kannst du die änderungen sehen?
>[!answer]
>```
>docker stop 930
>docker start 930
>```
>ja


1. Kopiere die index.html datei auf deine Workstation
   
```
docker cp 930:/var/www/html/index.html .
```

2. Mache eine anpassung an `index.html` 
   >[!answer]
   >
   >(siehe [a6-index](a6-index.html))

3. Mounte die datei nach /var/www/html 
   >[!answer]
   >
   >siehe [a6-docker-compose](a6-docker-compose.yml)

4. Kannst du die änderungen sehen?
>[!answer]
>
>Ja

5. Passe die selbe datei in dem container an, was passier mit der lokalen datei?
   
   >[!answer]
   >
   >Sie wird lokal auch geändert
   
6. Verhindere das zur runtime des cotainers änderungen an index.html vorgenommen werden können
>[!question] HOW ?
>Docker Volume einstellung in docker-compose:
>```yaml
>volumes:
>      - type: bind
>        source: ./my-local-directory
>        target: /path/inside/container
>        read_only: true
>```
>



## Compose Redis persistent data volume

1. `volume` im compose hinzufügen (siehe [a6-docker-compose](a6-docker-compose.yml))
2. Warten bis redis automatisch `dump.rdb `saved oder `docker exec -it redismasterid redis-cli save`


