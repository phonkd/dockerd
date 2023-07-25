****

## Beschreibe in deinen eigenen Worten wie sich Labels und Annotations in ihrem Verwendungszweck unterscheiden.

>[!answer]
>Labels are used to identify objects inside of a cluster. 
>An example of that are labeled pods. With those labels replicasets know if a pod can be counted in or not.
>On the other hand [annotations](annotation.md) are notes/explanations that can be added to pods. An example anotation would be `buildVersion: 1.2.1`

## Vergib für deine Frontend und Backend sinnvolle Labels:

| Key          | Frontend | Redis master | Redis follower |
| ------------ | -------- | ------------ | -------------- |
| `gb-component:` | `frontend` | `redis`        | `redis-follower`               |

### Frontend:

See: [a12-frontend](a12-frontend.yml)

`k apply -f a12-frontend.yml`

`kubectl get pods --all-namespaces --label-columns gb-component`

![](Pasted%20image%2020230725122040.png)

### Redis

See: [a12-ckad-redis](a12-ckad-redis.yml) [a12-ckad-redis-follower](a12-ckad-redis-follower.yml)

`k apply -f a12-redis.yml` & `k apply -f a12-redis-follower.yml`

![](Pasted%20image%2020230725122323.png)