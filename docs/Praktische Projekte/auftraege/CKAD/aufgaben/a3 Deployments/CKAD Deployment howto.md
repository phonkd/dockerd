****

## Packe deinen Pod in ein replicaSet und stell sicher dass 3 pods laufen

`./a2-deploy-replic.yml`

[a2-deploy-replic](a2-deploy-replic.yml) Obsidian users

`replicas: 1` --> `replicas: 3`

## Vergleiche die drei Pods deines Replicasets mit dem Pod aus der vorherigen Übung (`kubectl describe` ist dein freund). Was fällt dir dabei auf?

Es ist zu sehen welches replicaset die pods erstellt hat besteht aus `deploymentName`-`replicaset-id(am ende vom namen)`-`5stellige id`

### Skaliere die Pods auf 4. Welche möglichkeiten kennst du dafür?

### via command:

`kubectl scale deployment --replicas 4 deployment-of-exported-785ccc6d8d`

## Lösche einen Pod. Was passiert?

Er wird gelöscht aber direkt neu erstellt

## Füg dem deployment pod ein neues Label hinzu. Es darf maximal ein Command verwendet werden. Was passiert (evtl. Musst du kurz warten)?

`kubectl label pod deployment-of-exported-785ccc6d8d-dmgnv huan=1`

nichts passiert, es gibt keinen unterschied zum replicaset (nirgends passiert was)