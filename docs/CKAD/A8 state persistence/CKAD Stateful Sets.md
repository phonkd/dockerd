****

*statefulsets are similar to deployments, they however by default have ordered Pod creation (if pod 1 fails creating, pod 2 will never try). This can be changed with [Pod management Policy](CKAD%20Stateful%20Sets.md#Pod%20management%20Policy) Statefulsets are useful for services with static hostnames.*


## vs Deployments

| Property              | Deployment       | Stateful Set                       |
| --------------------- | ---------------- | ---------------------------------- |
| Orderd Pod scheduling | no (all at once) | yes                                |
| Numbered Pod Name     | no (random Name) | name of statefulset -int usw (yes) |

Useful for keeping names of e.g a mysql master the same even after recreating the pod. (mysql-0)

## How to create a statefulset

1. Create deployment
2. change  `kind: Deployment` to `kind: StatefulSet`
3. Specify `serviceName: mysql-h` under `spec:`

## Pod management Policy

```yml
spec:
 ...
 podManagementPolicy: Parrallel
```