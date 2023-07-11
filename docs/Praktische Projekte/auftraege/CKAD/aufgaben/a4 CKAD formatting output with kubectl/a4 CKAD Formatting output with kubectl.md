****

## Zeig alle Pods an; Es soll zusätzlich die Pod IP und der Node auf welchem der pod läuft sichtbar sein:

`kubectl get pods -o wide`


## Zeig die definition deines Deployments als im yaml format an.

`kubectl get deployments.apps -o yaml deployment-of-exported`

## Zeig die definition deines Deployments als im json format an.

`kubectl get deployments.apps -o json deployment-of-exported`

## Zeige nur den Namen aller Pods an

`kubectl get pods -o name`

## Zeige den Namen und das Image aller Pods an Es soll eine Spalte PODNAME und eine IMAGE geben.

`kubectl get pods -o=custom-columns='PODNAME:.metadata.name,IMAGE:.spec.containers[*].image'`

`[*]` heisst alles

## Zeige alle resourcen in deinem Namespace an

`kubectl get all -n default`

## **Bonus**: Zeige den Namen und das Image aller Pods an ohne Spalten-Namen.

`kubectl get pods -o=custom-columns=':.metadata.name,:.spec.containers[*].image'`