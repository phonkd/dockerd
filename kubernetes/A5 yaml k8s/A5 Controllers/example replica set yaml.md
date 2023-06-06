***
```yaml
apiVersion: apps/v1
kind: ReplicaSet
metadata:
 name: myapp-replicaset
 labels:
  app: myapp
  type: front-end
spec:
 template:
  metadata:
   name: myapp-pod
   labels:
    app: myapp
    type: front-end
  spec:
   containers:
    - name: nginx-container
      --image: nginx
  replicas: 3
  selector:
   matchLabels:
    type: front-end
```
>[!tip]
>- If labels apply, replica sets will also consider pods not created by itself.
>- The template section consists of the pod definition file

