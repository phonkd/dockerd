****

1. Erstelle eine Docker-Compose Datei, die sowohl dein Image als auch [Redis](https://redis.io/ "https://redis.io/") beinhaltet.  
    (Redis soll mindestens aus zwei Komponenten bestehen: einem Leader (Image: [docker.io/redis:6.0.5](http://docker.io/redis:6.0.5 "http://docker.io/redis:6.0.5")) und einen Follower (Image: [gcr.io/google_samples/gb-redis-follower:v2](http://gcr.io/google_samples/gb-redis-follower:v2 "http://gcr.io/google_samples/gb-redis-follower:v2")) 
>[!answer]
>Siehe [a5-docker-compose](a5-docker-compose.yml)
>Eigenes image kam aus eigener registry [a4 howto](a4%20howto.md)

2. Sorge dafür das das gb-frontend im browser aufgerufen werden kann:

>[!answer]
>Siehe [a5-docker-compose](a5-docker-compose.yml)
>(`ports:`)
   


## Bonus

1. verifiziere auch, dass redis aus deinem gb-frontend heraus ansprechbar ist.
   >[!answer]
   >Siehe `./docker-compose.yml`
   >(`links: ...`)
   

   