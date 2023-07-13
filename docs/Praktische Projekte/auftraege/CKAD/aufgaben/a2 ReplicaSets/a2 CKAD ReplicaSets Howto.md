****

## Refreshd

>[!info] Replicasets vs deployments
>Replicasets are a lower object, automatically created by deployments. **Replicasets** create the pods.
>Replicasets can be seperatly created.


## Packe deinen Pod in ein ReplicaSet und stell sicher, dass 3 Pods laufen.

Siehe

**Obsidian:** [a2-replica-set](a2-replica-set.yml)

**Others:** `./a2-replica-set-yml`

## Vergleiche die drei Pods deines Replicasets mit dem Pod aus der vorherigen Übung (`kubectl describe` ist dein freund). Was fällt dir dabei auf?

Der namen der Pods besteht aus `replicasetName`-`random`

Die pods sind alle genau gleich alt: 

![Pasted image 20230711142630](../../../../../ressources/Pasted%20image%2020230711142630.png)

sonst sind alle pods fast gleich

## Skaliere die Pods auf 4. Welche möglichkeiten kennst du dafür?

### Command:

`kubectl scale replicaset --replicas 4 a2-replicaset` (passt auch das yaml an)

### Yaml Edit

`kubectl edit replicaset a2-replicaset`

![Pasted image 20230711142900](../../../../../ressources/Pasted%20image%2020230711142900.png)

## Lösche einen Pod. Was passiert?

Der pod wird gelöscht, aber direkt wird ein neuer gestartet:

![Pasted image 20230711143014](../../../../../ressources/Pasted%20image%2020230711143014.png)

## Füg den, durch das Replicaset, ausgerollten Pods ein neues Label hinzu. Es darf maximal ein Command verwendet werden. Was passiert (evtl. Musst du kurz warten)?

`kubectl label pod name huan=1`

Das label wird dem Pod hinzugefügt und kann mit `kubectl describe pod podname` eingesehen werden.

Auch nach langem warten (15 min) passiert mit dem Pod nichts.

![Pasted image 20230711151632](../../../../../ressources/Pasted%20image%2020230711151632.png)
