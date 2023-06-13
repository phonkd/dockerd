****

## Vorbereitung

Erstelle ein docker-compose in dem das Frontend mit dem redis "spricht". 

Das heisst: wenn Du in der App einen Guestbook Eintrag erstellst, sollte der in redis gespeichert werden (und im Browser entsprechend angezeigt werden).

Da das Debuggen der App hier nicht die Hauptaufgabe ist Hinweis:

Die Redis Hosts müssen bestimmte Namen haben, damit die App automatisch darauf connecten kann:  
Der Redis Leader host muss "redis-leader" heissen und der Follower muss "redis-follower" heissen. Wenn die Guestbook Einträge nicht gespeichert werden können, liegt es vermutlich daran, dass Du die services im docker-compose nicht so genannt hast.

mehrere "Netze":

1. Erstelle 2 unterschiedliche Subnetzen
2. Das Frontend soll aus Subnetz 1 erreichbar sein und Redis darf nur im Subnetz 2 sein
3. Stell sicher, dass das Frontend Redis erreicht.


****

## Howto

1. 2 Netzwerke erstellen
   `network:` siehe `./docker-compose.yml`
2. `frontend` service zugriff auf beide netzwerke geben
3. `redis-leader` & `redis-follower` dem netzwerk 2 hinzufügen
