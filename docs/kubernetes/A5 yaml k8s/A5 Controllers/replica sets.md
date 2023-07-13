***
[example replica set yaml](example%20replica%20set%20yaml.md)
Not the same as [Replication controller](Replication%20controller.md)

Create:
`kubectl create -f file.yml
list:
`kubectl get replicaset

## Labels and selectors
*Replica sets checks if the specified number of pods are running. It does not matter if the pods were created by the replica set or not.*
>[!question] How does the replica set know which containers to count?
>By you defining labels in the `pod-definition.yml` file and using the selector: in the replica set definition:
>pod-definition:
>```yml
>...
>metadata:
> name: myapp-pod
> labels:
>  tier: front-end
>```
>replicaset-definition.yml:
>```
>...
>selector:
> matchLabels:
>  tier: front-end
>```

