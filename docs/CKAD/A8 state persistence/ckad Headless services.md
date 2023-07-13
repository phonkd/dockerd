****

## Example

To make a mysql database accessible to a webserver, a [Service](docs/CKAD/A7%20Networking&services/Services.md) is needed. By default this service would loadbalance across all nodes including the slaves. It should only route traffic to the master node by its hostname. For this a [ckad Headless service](.md) exists.

![Pasted image 20230710100344](Pasted%20image%2020230710100344.png)

Each pod will be accessible by

`podname`.`headless-service-name`.`namespace`.`svc`.`cluster-domain`.`top-level-domain`

```yml
apiVersion: v1
kind: Service
metadata:
 name: mysql-h
spec:
 ports:
  - port: 3306
 selector:
  app: mysql
 clusterIP: None
```

the property `cluterIP: None` is what differenciates a headless service from a [normal service](docs/kubernetes/A7%20Networking/A5%20Networking/Services.md)

### apply to pod

```yml
apiVersion: v1
kind: Pod
metadata: 
 name: myapp-pod
 labels:
  app: mysql
spec:
 containers:
 - name: mysql
   image: mysql
 subdomain: mysql-h
 hostname: mysql-pod
```

>[!error] Problem
>All pods will have the same hostname with a template like this in a deployment.


>[!success](CKAD%20Stateful%20Sets.md)
>Specify the `serviceName:` under `spec` of the statefulset.
>The statefulset automatically creates a dns record with the pods name. `mysql-0...`


